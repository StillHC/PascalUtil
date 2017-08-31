// 按照支付宝或者微信支付的开发手册的说法，一个标准的客户端接入支付业务模型应该是这样的，我忽略时序图，只用文字描述：

// 用户登录客户端，选择商品，然后点击客户端支付。
// 客户端收集商品信息，然后调用自己业务平台的预付款接口。
// 业务平台根据客户端提交的商品信息，生成自己的订单号等内容，并按照第三方支付的要求对订单信息进行拼装组合，并编码和签名。
// 业务平台返回签名后的订单信息给客户端。
// 客户端根据这个签名信息，呼出客户端的第三方支付系统，完成支付。
// 1）准备工作：

// 支付到指定的商家（一般就是软件开发商自己啦），商家需要事先在支付宝的开放平台申请开通【支付宝无线快捷支付】，具体请百度。
// 开通【无线快捷支付】后，支付宝应该返回给商家如下几个重要参数：
// 	PARTNER（商户ID): 一个16为的字符串，应该都是数字。
// 	SELLER（商户名）：多数是商户的邮件地址。
// 	RSA_PRIVATE（商户私钥 ): 一个848位的字符串，采用pkcs8编码过。
// 	RSA_PRIVATE（商户私钥 ): 一个848位的字符串。
// 	RSA_PUBLIC（商户公钥）： 一个218位的经过pkcs8编码的字符串。这个公钥并没有用到，是支付宝后台用的。
// 以上几个参数，都是支付宝再审核通过后，通过邮件发送给商家的，其中RSA的两个公私钥，需要商户自己根据手册自行生成并上传和保存，具体这一步请务必参考支付宝开放平台的说明。

unit zhifubao;

interface

uses
SysUtils, windows, classes, dialogs, IdSSLOpenSSL, IdSSLOpenSSLHeaders, IdCoderMIME, IdGlobal, IdHTTP;

type
TZhiFuBao = class
// 支付宝支付的签名生成 支付宝sdk要求，需要对订单信息进行rsa签名
class function GenarateRSASign(PrivateKey, Content: AnsiString): AnsiString;
// 支付宝如何提交请求
class function SSLHttpPost(URL, OrderInfo: string): string;
// 支付宝支付如何验证签名
class function VerifyRSASign(const PublicKey, Content, Sign: AnsiString): Boolean;
// 订单格式化
class function GetOrderInfo(PARTNER, SELLER, subject, body, price: string): string;
// 生成订单号 保证不重复即可，随便写
class function GetTrackNo: string;
end;

implementation

{ TZhiFuBao }

class function TZhiFuBao.GenarateRSASign(PrivateKey, Content: AnsiString): AnsiString;
var
buffer: PAnsiChar;
rsa_out, md: array[0..1023] of AnsiChar;
r: PRSA;
rsa_out_len: Cardinal;
key: PBIO;
hIdCrypto: HMODULE;
hash: array[0..SHA_DIGEST_LENGTH - 1] of AnsiChar;
type
Trsa_sign = function(_type: LongInt; const m: PAnsiChar; m_length: LongWord; sigret: PAnsiChar; var siglen: Cardinal; const rsa: PRSA): LongInt; cdecl;

Tsha1 = function(d: PAnsiChar; n: Cardinal; md: PAnsiChar): PAnsiChar; cdecl;

function LoadFunctionCLib(const FceName: string; const ACritical: Boolean = True): Pointer;
begin
Result := GetProcAddress(hIdCrypto, PChar(FceName));
end;

var
rsa_sign: Trsa_sign;
sha1: Tsha1;
bytes: TIdBytes;
begin
LoadOpenSSLLibrary;
hIdCrypto := LoadLibrary('libeay32.dll');
Assert(hIdCrypto <> 0, '无法加载libeay32.dll');
try
key := BIO_new_mem_buf(@PrivateKey[1], Length(PrivateKey));
r := PEM_read_bio_RSAPrivateKey(key, nil, nil, nil);
if r = nil then
Exit;
buffer := PAnsiChar(Content);
FillChar(md[0], 1024, 0);
FillChar(hash[0], SHA_DIGEST_LENGTH, 0);
sha1 := LoadFunctionCLib('SHA1');
Assert(@sha1 <> nil, 'SHA1加载失败');
sha1(buffer, Length(Content), @hash[0]);
rsa_sign := LoadFunctionCLib('RSA_sign');
Assert(@rsa_sign <> nil, 'RSA_sign加载失败');
FillChar(rsa_out[0], 1024, 0);
rsa_sign(EVP_sha1()._type, @hash[0], SHA_DIGEST_LENGTH, @rsa_out[0], rsa_out_len, r);
SetLength(bytes, rsa_out_len);
if rsa_out_len > 0 then
Move(rsa_out[0], bytes[0], rsa_out_len);
Result := AnsiString(TIdEncoderMIME.EncodeBytes(bytes));
BIO_free(key);
RSA_free(r);
finally
FreeLibrary(hIdCrypto);
UnLoadOpenSSLLibrary
end;
end;

class function TZhiFuBao.GetOrderInfo(PARTNER, SELLER, subject, body, price: string): string;
var
s: string;
begin
// 签约合作者身份ID
s := 'partner="' + PARTNER + '"';
// 签约卖家支付宝账号
s := s + '&seller_id="' + SELLER + '"';
// 商户网站唯一订单号
s := s + '&out_trade_no="' + GetTrackNo + '"';
// 商品名称
s := s + '&subject="' + subject + '"';
// 商品详情
s := s + '&body="' + body + '"';
// 商品金额
s := s + '&total_fee="' + price + '"';
// 服务器异步通知页面路径
s := s + '&notify_url="' + 'http://你的业务后台地址，一定要写，要合法"';
// 服务接口名称， 固定值
s := s + '&service="mobile.securitypay.pay"';
// 支付类型， 固定值
s := s + '&payment_type="1"';
// 参数编码， 固定值
s := s + '&_input_charset="utf-8"';
// 设置未付款交易的超时时间
// 默认30分钟，一旦超时，该笔交易就会自动被关闭。
// 取值范围：1m～15d。
// m-分钟，h-小时，d-天，1c-当天（无论交易何时创建，都在0点关闭）。
// 该参数数值不接受小数点，如1.5h，可转换为90m。
s := s + '&it_b_pay="30m"';
// extern_token为经过快登授权获取到的alipay_open_id,带上此参数用户将使用授权的账户进行支付
// orderInfo += "&extern_token=" + "\"" + extern_token + "\"";
// 支付宝处理完请求后，当前页面跳转到商户指定页面的路径，可空
s := s + '&return_url="m.alipay.com"';
// 调用银行卡支付，需配置此参数，参与签名， 固定值 （需要签约《无线银行卡快捷支付》才能使用）
// orderInfo += "&paymethod=\"expressGateway\"";
Result := s;
end;

class function TZhiFuBao.GetTrackNo: string;
var
G: TGuid;
S: string;
begin
G := TGuid.NewGuid;
S := G.ToString;
S := S.Substring(0, 15);
Result := s;
end;

class function TZhiFuBao.SSLHttpPost(URL, OrderInfo: string): string;
var
ssl: TIdSSLIOHandlerSocketOpenSSL;
http: TIdHttp;
List: TStrings;
begin
http := TIdHttp.Create(nil);
http.Request.Accept := 'text/xml,text/javascript,text/html,text/plain';
http.Request.UserAgent := 'aop-sdk-java';
http.HTTPOptions := [hoKeepOrigProtocol, hoForceEncodeParams];
ssl := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
ssl.SSLOptions.Method := sslvTLSv1_2;
http.IOHandler := ssl;
List := TStringList.Create;
List.Delimiter := '&';
List.DelimitedText := OrderInfo; //Builder是形如 auth_code=1234&app_id=qqqqq&charset=utf-8........
try
try
Result := http.Post(URL, List);
// Result := http.Post(URL, List, TEncoding.UTF8);
// TLogger.Instance.Warn('TAliPaySSLHttpPost.Post Result:' + Result);
except
on e: Exception do
begin
Result := '';
ShowMessage(e.Message);
end;
end;
finally
ssl.Free;
http.Free;
List.Free;
end;
end;

class function TZhiFuBao.VerifyRSASign(const PublicKey, Content, Sign: AnsiString): Boolean;
var
buffer: PAnsiChar;
rPub: PRSA;
bioPub: PBIO;
hIdCrypto: HMODULE;
hash: array[0..SHA_DIGEST_LENGTH - 1] of AnsiChar;
type
Tsha1 = function(d: PAnsiChar; n: Cardinal; md: PAnsiChar): PAnsiChar; cdecl;

TRSA_verify = function(dtype: LongInt; const m: PAnsiChar; m_length: LongWord; sigret: PAnsiChar; siglen: Cardinal; const rsa: PRSA): LongInt; cdecl;

TPEM_read_bio_RSA_PUBKEY = function(bp: PBIO; x: PPRSA; cb: Ppem_password_cb; u: Pointer): PRSA; cdecl;

function LoadFunctionCLib(const FceName: string; const ACritical: Boolean = True): Pointer;
begin
Result := GetProcAddress(hIdCrypto, PChar(FceName));
end;

var
sha1: Tsha1;
RSA_verify: TRSA_verify;
bytes: TidBytes;
PEM_read_bio_RSA_PUBKEY: TPEM_read_bio_RSA_PUBKEY;
begin
Result := False;
LoadOpenSSLLibrary;
hIdCrypto := LoadLibrary('libeay32.dll');
Assert(hIdCrypto <> 0, '无法加载libeay32.dll');
try
bioPub := BIO_new_mem_buf(@PublicKey[1], Length(PublicKey));
PEM_read_bio_RSA_PUBKEY := LoadFunctionCLib('PEM_read_bio_RSA_PUBKEY');

Assert(@PEM_read_bio_RSA_PUBKEY <> nil, 'PEM_read_bio_RSA_PUBKEY加载失败');
rPub := PEM_read_bio_RSA_PUBKEY(bioPub, nil, nil, nil);
if rPub = nil then
Exit;

buffer := PAnsiChar(Content);
FillChar(hash[0], SHA_DIGEST_LENGTH, 0);
bytes := TIdDecoderMIME.DecodeBytes(string(Sign));

sha1 := LoadFunctionCLib('SHA1');
Assert(@sha1 <> nil, 'SHA1加载失败');
sha1(buffer, Length(Content), @hash[0]);

RSA_verify := LoadFunctionCLib('RSA_verify');
Assert(@RSA_verify <> nil, 'RSA_sign加载失败');
Result := RSA_verify(EVP_sha1()._type, @hash[0], SHA_DIGEST_LENGTH, @bytes[0], Length(bytes), rPub) > 0;
BIO_free(bioPub);
RSA_free(rPub);
finally
FreeLibrary(hIdCrypto);
UnLoadOpenSSLLibrary
end;
end;

end.