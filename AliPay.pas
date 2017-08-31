先看微信支付：
1，微信支付的签名生成

 uses IdHashMessageDigest, NatvieXml; //我使用的是NativeXml4.07

function TMicroPayParamBuilder.GetSign: string;
var
  Digest: TIdHashMessageDigest5;
  utf8: UTF8String;
begin
  utf8 := '';

  Assert(FAppId <> '', '公众账号ID 不能为空！');
  utf8 := utf8 + 'appid=' + FAppId;
  
  if FAttach <> '' then
    utf8 := utf8 + '&attach=' + FAttach;

  Assert(FAuthCode <> '', '授权码 不能为空！');
  utf8 := utf8 + '&auth_code=' + FAuthCode;

  Assert(FBody <> '', '商品描述 不能为空！');
  utf8 := utf8 + '&body=' + FBody;

  if FDetail <> '' then
    utf8 := utf8 + '&detail=' + BuildDetail();

  Assert(FMchId <> '', '商户号 不能为空！');
  utf8 := utf8 + '&mch_id=' + FMchId;
  
  utf8 := utf8 + '&nonce_str=' + FNonceStr;

  Assert(FOutTradeNo <> '', '商户订单号 不能为空！');
  utf8 := utf8 + '&out_trade_no=' + FOutTradeNo;

  Assert(FSpbillCreateIp <> '', '终端IP 不能为空！');
  utf8 := utf8 + '&spbill_create_ip=' + FSpbillCreateIp;

  Assert(FTotalFee > 0, '订单金额 必须大于0！');
  utf8 := utf8 + '&total_fee=' + IntToStr(FTotalFee);

  Assert(Fkey <> '', '密钥 不能为空！');
  utf8 := utf8 + '&key=' + Fkey;
 
 //计算签名
  try
    Digest:= TIdHashMessageDigest5.Create;
    Result := Digest.HashBytesAsHex(BytesOf(utf8));
  finally
    Digest.Free;
  end;
end;   

//生成Http Post请求的数据
function TMicroPayParamBuilder.BuildParam: string;
var
  xml : TNativeXml;
  Node: TXmlNode;
begin
  xml := TNativeXml.CreateEx(nil, False, False, True, 'xml');
  try
    Node:= xml.NodeNewTextType('appid', FAppId , xeElement);
    xml.Root.NodeAdd(Node);

    Node:= xml.NodeNewTextType('mch_id', FMchId , xeElement);
    xml.Root.NodeAdd(Node);


    Node:= xml.NodeNewTextType('nonce_str', FNonceStr , xeElement);
    xml.Root.NodeAdd(Node);

    Node:= xml.NodeNewTextType('sign', Sign , xeElement);
    xml.Root.NodeAdd(Node);

    Node:= xml.NodeNewTextType('body', FBody , xeElement);
    xml.Root.NodeAdd(Node);

    Node:= xml.NodeNewTextType('out_trade_no', FOutTradeNo , xeElement);
    xml.Root.NodeAdd(Node);

    Node:= xml.NodeNewIntType('total_fee', FTotalFee , xeElement);
    xml.Root.NodeAdd(Node);

    Node:= xml.NodeNewTextType('spbill_create_ip', FSpbillCreateIp , xeElement);
    xml.Root.NodeAdd(Node);

    Node:= xml.NodeNewTextType('auth_code', FAuthCode , xeElement);
    xml.Root.NodeAdd(Node);

    if FAttach <> '' then
    begin
      Node:= xml.NodeNewTextType('attach', FAttach , xeElement);
      xml.Root.NodeAdd(Node);
    end;

    if FDetail <> '' then
    begin
      Node:= xml.NodeNewTextType('detail', BuildDetail() , xeElement);
      xml.Root.NodeAdd(Node);
    end;

    Result := xml.WriteToString;

  finally
    xml.Free;
  end;
end;  

2, 微信支付请求如何提交 
class function TTencentSSLHttpPost.Post(URL: string;
  Builder: TBaseParamBuilder): string;
var
  ssl:TIdSSLIOHandlerSocketOpenSSL;
  http: TIdHttp;
  inStrm, outStrm: TStringStream;
begin
  http:= TIdHttp.Create(nil);
  ssl:=TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  ssl.SSLOptions.Method := sslvSSLv23;
  http.IOHandler := ssl;
  inStrm:= TStringStream.Create(Builder.BuildParam, TEncoding.UTF8);
  outStrm:= TStringStream.Create('',  TEncoding.UTF8);
  try
    try
      http.Post(URL, inStrm, outStrm);
      Result := outStrm.DataString;

    except
      Result := '';
    end;
  finally
    ssl.Free;
    http.Free;
    outStrm.Free;
    inStrm.Free;
  end;
end;

const URL_MicroPay  = 'https://api.mch.weixin.qq.com/pay/micropay';

 class function TMicroPayHttpUtils.PostRequest(  Builder: TMicroPayParamBuilder): string;
begin  Result := TTencentSSLHttpPost.Post(URL_MicroPay, Builder);
end; 

微信如何验证签名：

TStringsHelper = class helper for TStrings
  function Join(const Splitter: string): string;
end;

{ TMyStrings}

function TStringsHelper.Join(const Splitter: string): string;
var
  I : Integer;
begin
  Result := '';
  for I := 0 to Self.Count - 1 do
    Result := Result + Splitter + Self.Names[I] + '=' +  Self.ValueFromIndex[I];

  if Result <> '' then  System.Delete(result, 1, Length(Splitter));
end;
 
function MyStringListSort(List: TStringList; Index1, Index2: Integer): Integer;
begin
  Result := CompareStr(List.Names[Index1], List.Names[Index2]);
end;

function VerifyResponseSign(xml: TNativeXml; Key: string): Boolean; overload;
var
  sign: string;
  I : Integer;
  List : TStringList;
  utf8: UTF8String;
  Digest: TIdHashMessageDigest5;
begin
  Result := False;

  if xml.Root.FindNode('sign') = nil then Exit;
  sign := xml.Root.FindNode('sign').ValueUnicode;

  List := TStringList.Create;
  try
    for I := 0 to xml.Root.NodeCount - 1 do
    begin
      if (xml.Root.Nodes[I].NameUnicode <> 'sign')  and (xml.Root.Nodes[I].NameUnicode <> 'WhiteSpace')
        and (xml.Root.Nodes[I].ValueUnicode <> '') then
        List.Add(xml.Root.Nodes[I].NameUnicode + '=' + xml.Root.Nodes[I].ValueUnicode);
    end;
    List.CustomSort(MyStringListSort);

    utf8 := List.Join('&') + '&key=' + key;

    try
      Digest:= TIdHashMessageDigest5.Create;
      Result := SameText(Digest.HashBytesAsHex(BytesOf(utf8)), sign);
    finally
      Digest.Free;
    end;
  finally
    List.Free;
  end;
end;

function VerifyResponseSign(xml: TNativeXml): Boolean; overload;
begin
  Result := VerifyResponseSign(xml, GetKey());
end;

function VerifyResponseSign(Response: string; Key: string): Boolean; overload;
var
  xml: TNativeXml;
begin
  Result := False;
  xml := TNativeXml.Create(nil);
  try
    try
      xml.ReadFromString(Response);
    except
      Exit;
    end;

    Result := VerifyResponseSign(xml, Key);
  finally
    xml.Free;
  end;
end; 
 
 

那么如何发送一个刷卡支付请求呢？
procedure TForm4.btn4Click(Sender: TObject);
var
  Param: TMicroPayParamBuilder;
  Response: string;
begin
  Param:= TMicroPayParamBuilder.Create;
  try
    if edBody.Text <> '' then
      Param.Body := edBody.Text;
    Param.OutTradeNo:= edTradeNo.Text;
    Param.SpbillCreateIp:=idpwtch1.LocalIP;
    param.AuthCode:= edAuthCode.Text;
    Param.Attach := edAttach.Text;
    Param.TotalFee := 10;

    param.AppId := edAppId.Text;
    Param.MchId := edMch_id.Text;
    Param.Key := edKey.Text;

    mmo1.Lines.Append(Param.BuildParam);
    mmo1.Lines.Append('-------------------------------------------');

    Response := TMicroPayHttpUtils.PostRequest(Param);

    if Response = '' then
    begin
      ShowMessage('请求出错！ 可能是网络不通！');
      Exit;
    end;

    mmo1.Lines.Append(Response);

  if not VerifyResponseSign(Response, GetKey()) then 
      showmessage('签名验证不通过！');  

  finally
    Param.Free;
  end;
end;






支付宝支付：
1，支付宝支付的签名生成
uses IdSSLOpenSSL, IdSSLOpenSSLHeaders;

//生成RSA签名
//参数:
//PrivateKey：私钥
//Content: 要签名的内容
function GenerateRSASign(const PrivateKey:AnsiString; const Content: AnsiString): AnsiString;
var
  rsaPrivate:PRSA;
  rsa_out_len: Cardinal;
  bio:PBIO;
  hIdCrypto:HMODULE;
  hash:array[0..SHA_DIGEST_LENGTH - 1] of AnsiChar;

type
  TRSA_sign = function (_type : LongInt; const m : PAnsiChar; m_length : LongWord;
      sigret : PAnsiChar; var siglen : Cardinal; const rsa : PRSA) : LongInt; cdecl;

  TSHA1 = function (d: PAnsiChar; n:Cardinal; md:PAnsiChar):PAnsiChar; cdecl;

  function LoadFunctionCLib(const FceName: string; const ACritical : Boolean = True): Pointer;
  begin
    Result := GetProcAddress(hIdCrypto, PChar(FceName));
  end;

var
  RSA_sign : TRSA_sign;
  SHA1: TSHA1;
  bytes: TBytes;

begin
LoadOpenSSLLibrary;  
  hIdCrypto := LoadLibrary('libeay32.dll');
  Assert(hIdCrypto <> 0, '无法加载libeay32.dll');
  try
    bio :=   BIO_new_mem_buf(@PrivateKey[1], Length(PrivateKey));

    rsaPrivate :=PEM_read_bio_RSAPrivateKey(bio, nil, nil, nil) ;
    Assert(rsaPrivate <> nil, GetErrorMssage());

    FillChar(hash[0], SHA_DIGEST_LENGTH, 0);
    SHA1:= LoadFunctionCLib('SHA1');
    Assert(@SHA1 <> nil, 'SHA1加载失败');

    SHA1(@Content[1], Length(Content), @hash[0]);
    RSA_sign:= LoadFunctionCLib('RSA_sign');
    Assert(@RSA_sign <> nil, 'RSA_sign加载失败');

    SetLength(bytes, 1024);
    RSA_sign(EVP_sha1()._type, @hash[0], SHA_DIGEST_LENGTH, @bytes[0], rsa_out_len, rsaPrivate);

    SetLength(bytes, rsa_out_len);

    Result := TIdEncoderMIME.EncodeBytes(bytes);

    BIO_free(bio);
    RSA_free(rsaPrivate);
  finally
    UnLoadOpenSSLLibrary   
    FreeLibrary(hIdCrypto);
  end;
end;

//生成条码支付的签名
//TAliPayRequestParamBuilder继承自TBaseAliPayParamBuilder
function TAliPayRequestParamBuilder.GetSign: string; 
var
  utf8: UTF8String;
  ansi: AnsiString;
  List: TStringList;
begin
  List := TStringList.Create;
  try
    Assert(AppId <> '' , '开发者的应用ID 不能为空！');
    List.Add('app_id=' + AppId);

    List.Add('biz_content=' + BizContent.AsString); //BizContent: ISuperObject

    Assert(Charset <> '' , '编码格式 不能为空！');
    List.Add('charset=' + Charset);

    Assert(Method <> '' , '接口名称 不能为空！');
    List.Add('method=' + Method);

    if NotifyUrl <> '' then
      List.Add('notify_url=' + NotifyUrl);

    Assert(SignType <> '' , '签名算法类型 不能为空！');
    List.Add('sign_type=' + SignType);

    Assert(Timestamp <> '' , '发送请求时间 不能为空！');
    List.Add('timestamp=' + Timestamp);

    Assert(Version <> '' , '接口版本 不能为空！');
    List.Add('version=' + Version);

    List.CustomSort(MyStringListSort);

    utf8 := List.Join('&');
    TLogger.Instance.Warn('TTradePayParamBuilder.GetSign:' + utf8);

    ansi := Utf8ToAnsi(utf8);

    Assert(PrivateKey <> '', '私钥 不能为空！');

    Result := GenerateRSASign(PrivateKey, ansi);//生成签名
  finally
    List.Free;
  end;
end;

//生成条码支付的请求参数
procedure TAliPayRequestParamBuilder.BuildParamList(Params: TStrings);
begin
  Params.Add('app_id=' + AppId);
  Params.Add('biz_content=' + BizContent.AsString);
  Params.Add('charset=' + Charset);
  Params.Add('method=' + Method);
  if NotifyUrl <> '' then
    Params.Add('notify_url=' + NotifyUrl);
  Params.Add('sign_type=' + SignType);
  Params.Add('timestamp=' + Timestamp);
  Params.Add('version=' + Version);
  Params.Add('sign=' + GetSign());
end; 



2，支付宝如何提交请求
class function TAliPaySSLHttpPost.Post(const URL: string; Builder: TBaseAliPayParamBuilder): string;
var  
  ssl:TIdSSLIOHandlerSocketOpenSSL;  
  http: TIdHttp;  
  List: TStrings;
begin  
  http:= TIdHttp.Create(nil);  
  http.Request.Accept := 'text/xml,text/javascript,text/html,text/plain';  
  http.Request.UserAgent := 'aop-sdk-java';  
  http.HTTPOptions := [hoKeepOrigProtocol, hoForceEncodeParams];  
  ssl:=TIdSSLIOHandlerSocketOpenSSL.Create(nil);  
  ssl.SSLOptions.Method := sslvTLSv1_2;  
  http.IOHandler := ssl;  
  List:= TStringList.Create;  
  Builder.BuildParamList(List); //把请求参数放到List里 
  TLogger.Instance.Warn('TAliPaySSLHttpPost.Post Params:' + List.Join('&'));  
  try    
    try      
      Result :=  http.Post(URL, List, TEncoding.ANSI);       
    except      
       on e: Exception do      
       begin        
          Result := '';      
       end;    
    end;  
  finally    
    ssl.Free;    
    http.Free;    
    List.Free;  
  end;
end;



3，支付宝支付如何验证签名

/验证RSA签名
//参数:
//PublicKey：支付宝公钥
//Content: 要签名的内容
//Sign: 签名
function VerifyRSASign(const PublicKey,Sign: AnsiString; const Content:AnsiString ): Boolean;
var
  rsaPub:PRSA;
  bioPub:PBIO;
  hIdCrypto:HMODULE;
  hash:array[0..SHA_DIGEST_LENGTH - 1] of AnsiChar;

type
  TSHA1 = function (d: PAnsiChar; n:Cardinal; md:PAnsiChar):PAnsiChar; cdecl;

  TRSA_verify = function (dtype : LongInt; const m : PAnsiChar; m_length : LongWord;
    sigret : PAnsiChar; siglen : Cardinal; const rsa : PRSA) : LongInt; cdecl;

  TPEM_read_bio_RSA_PUBKEY =function (bp:PBIO; x:PPRSA; cb: Ppem_password_cb; u:Pointer):PRSA;  cdecl;

  function LoadFunctionCLib(const FceName: string; const ACritical : Boolean = True): Pointer;
  begin
    Result := GetProcAddress(hIdCrypto, PChar(FceName));
  end;
var
  SHA1: TSHA1;
  RSA_verify:TRSA_verify;
  bytes: TBytes;
  PEM_read_bio_RSA_PUBKEY : TPEM_read_bio_RSA_PUBKEY;
begin
  hIdCrypto := LoadLibrary('libeay32.dll');
  Assert(hIdCrypto <> 0, '无法加载libeay32.dll');
  try
    bioPub :=   BIO_new_mem_buf(@PublicKey[1], Length(PublicKey));

    PEM_read_bio_RSA_PUBKEY := LoadFunctionCLib('PEM_read_bio_RSA_PUBKEY');
    Assert(@PEM_read_bio_RSA_PUBKEY <> nil , 'PEM_read_bio_RSA_PUBKEY加载失败');
    rsaPub := PEM_read_bio_RSA_PUBKEY(bioPub, nil, nil, nil) ;
    Assert(rsaPub <> nil, GetErrorMssage());

    FillChar(hash[0], SHA_DIGEST_LENGTH, 0);
    SHA1:= LoadFunctionCLib('SHA1');
    Assert(@SHA1 <> nil, 'SHA1加载失败');
    SHA1(@Content[1], Length(Content), @hash[0]);


    bytes := TIdDecoderMIME.DecodeBytes(Sign);

    RSA_verify:= LoadFunctionCLib('RSA_verify');
    Assert(@RSA_verify <> nil, 'RSA_sign加载失败');
    Result := RSA_verify(EVP_sha1()._type, @hash[0], SHA_DIGEST_LENGTH, @bytes[0], Length(bytes), rsaPub)>0;

    BIO_free(bioPub);
    RSA_free(rsaPub);
  finally
    FreeLibrary(hIdCrypto);
  end;
end;