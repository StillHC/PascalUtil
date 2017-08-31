unit uFunction;

interface

uses  Windows, Messages, SysUtils, Classes, Variants, StdCtrls, IdBaseComponent,
      IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Dialogs, xmldom,
      XMLIntf, msxmldom, XMLDoc, superobject, ActiveX;

const NL=#13#10;                  //回车换行符

{*------------------------------------------------------------------------------
  Function tips: 接口初始化， 从xml中读取配置。
-------------------------------------------------------------------------------}  
procedure PInterfaceInit();       //加载dll路径，接口地址

{*------------------------------------------------------------------------------
  Function tips: HTTP Post 方法封装。
  @param AURL   统一资源定位符
  @param ASource Post 参数
  @param sRlt
  @param TimeOut 响应超时
  @return
-------------------------------------------------------------------------------}            
function FHttpPost(AURL: string; const ASource: TStrings; var sRlt: string; TimeOut: Integer=0): Boolean;     //POS过程

{*------------------------------------------------------------------------------

   Function tips: 获取车辆用车单信息
  @param slastGetTime 上次调用时间
  @param sResult Web响应结果。
  @return
-------------------------------------------------------------------------------}        
function FGetExCarOrderInfo(slastGetTime, sResult:PChar):Boolean;stdcall; export;
{*------------------------------------------------------------------------------
  Function Tips : 推送车辆归队信息。
  @param sOrderID  订单号
  @param backUpTime   归队时间
  @param sResult       Web响应结果。
  @return
-------------------------------------------------------------------------------}          
function FExCarInInfo(sOrderID, sbackUpTime, sResult:PChar):Boolean;stdcall; export;

{*------------------------------------------------------------------------------
  Function Tips: 推送车辆出车信息。
  @param sOrderID
  @param sLeaveTime
  @param sResult
  @return
-------------------------------------------------------------------------------}          
function FExCarOutInfo(sOrderID, sLeaveTime, sResult:PChar):Boolean;stdcall; export;

//function FEntrance(sPlateNum,sCarType,sTime,sRlt: PChar): Boolean; stdcall; export;              //车辆入场
//function FDeparture(sPlateNum,sTime,sRlt: PChar): Boolean; stdcall; export;                      //车辆离场
//function FQueryDeparture(sPlateNum,sTime,sRlt: PChar): Boolean; stdcall; export;                 //车辆离场查询
//function FChangerPlateNum(sOldPlateNum,sNewPlateNum,sRlt: PChar): Boolean; stdcall; export;      //更改车牌号
//function FLogin(sLoginAccount,sPassword,sRlt: PChar): Boolean; stdcall; export;                  //用户登陆
//function FLoginOut(sRlt: PChar): Boolean; stdcall; export;                                       //用户退出登陆

//exports FEntrance,FDeparture,FQueryDeparture,FChangerPlateNum,FLogin,FLoginOut;

{dll 暴露接口}
exports
   FGetExCarOrderInfo, FExCarInInfo, FExCarOutInfo;

var
//  EntranceURL,DepartureURL,QueryDepartureURL,ChangeURL,LoginURL,LoginOutURL,DLLPath,MAC: string;      //接口URL地址
  WebURL, GetCarOrderInfoMethod, CarInInfoMethod, CarOutInfoMethod, DllPath, sClassName:string;
  iTimeOut: Integer;

implementation

procedure PInterfaceInit();
var
  XML: IXMLDocument;
  ModuleName: array [Byte] of Char;
begin
  GetModuleFileName(HInstance, PChar(@ModuleName[0]), Length(ModuleName));
  DLLPath := ExtractFilePath(ModuleName);
  if not FileExists(DLLPath+'ParkingSystem_InterfaceConfig.xml') then begin
    MessageBox(0,'接口配置文件：ParkingSystem_InterfaceConfig.xml，不存在！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  XML := NewXMLDocument();
  XML.LoadFromFile(DLLPath+'ParkingSystem_InterfaceConfig.xml');
  WebURL := XML.DocumentElement.ChildNodes.Nodes['ServerURL'].Text;
  GetCarOrderInfoMethod := XML.DocumentElement.ChildNodes.Nodes['GetCarOrderInfoMethod'].Text;
  CarInInfoMethod := XML.DocumentElement.ChildNodes.Nodes['CarInInfoMethod'].Text;
  CarOutInfoMethod := XML.DocumentElement.ChildNodes.Nodes['CarOutInfoMethod'].Text;
  sClassName := XML.DocumentElement.ChildNodes.Nodes['ClassName'].Text;
//  MAC := XML.DocumentElement.ChildNodes.Nodes['MAC'].Text;
  iTimeOut := StrToIntDef(XML.DocumentElement.ChildNodes.Nodes['TimeOut'].Text,0);
end;

function FHttpPost(AURL:  string; const ASource: TStrings; var sRlt: string; TimeOut: Integer=0): Boolean;
var
  Http: TIdHTTP;
begin
  Result := False;
  Http := TIdHTTP.Create(nil);
  HTTP.HTTPOptions := HTTP.HTTPOptions+[hoKeepOrigProtocol];  //必须有这行才使设置协议版本生效
  HTTP.ProtocolVersion := pv1_1;
  HTTP.HandleRedirects := True;
  HTTP.Request.AcceptCharSet := 'utf-8';
  HTTP.Request.ContentType := 'application/x-www-form-urlencoded';
  try
    try
      Http.ReadTimeout := TimeOut;
      sRlt := Http.Post(AURL, ASource);
      Result := True;
    except
      on E: Exception do sRlt :='Error:'+E.Message;
    end;
  finally
    FreeAndNil(Http);
  end;
end;

function FGetExCarOrderInfo(slastGetTime, sResult:PChar):Boolean;stdcall; export;
var
  ASource: TStrings;
  ARlt: string;
  AJS: ISuperObject;
begin
  Result := False;
  ASource := TStringList.Create;

  if DLLPath = '' then PInterfaceInit();

  try
    ASource.Values['className'] := sClassName;
    ASource.Values['methodName'] := GetCarOrderInfoMethod;
    ASource.Values['lastGetTime'] := slastGetTime;

    ASource.Text := UTF8Encode(ASource.Text);
    if FHttpPost(WebURL, ASource, ARlt, iTimeOut) then begin
      AJS := SO(ARlt);
      Result := UpperCase(AJS.S['code'])='0'; //Success
      StrCopy(sResult,PChar(string(AJS.S['data'])));
    end;
  finally
    FreeAndNil(ASource);         
  end;
end;


function FExCarInInfo(sOrderID, sbackUpTime, sResult:PChar):Boolean;stdcall; export;
var
  ASource: TStrings;
  ARlt: string;
  AJS: ISuperObject;
begin
  Result := False;
  ASource := TStringList.Create;

  if DLLPath = '' then PInterfaceInit();

  try
    ASource.Values['className'] := sClassName;
    ASource.Values['methodName'] := CarInInfoMethod;
    ASource.Values['backUpTime'] := sbackUpTime;
    ASource.Values['orderId'] := sOrderID;

    ASource.Text := UTF8Encode(ASource.Text);
    if FHttpPost(WebURL, ASource, ARlt, iTimeOut) then begin
      AJS := SO(ARlt);
      Result := UpperCase(AJS.S['code'])='1'; // 1 SUCCESS
      StrCopy(sResult,PChar(string(AJS.S['data'])));
    end;
  finally
    FreeAndNil(ASource);         
  end;
end;


function FExCarOutInfo(sOrderID, sLeaveTime, sResult:PChar):Boolean;stdcall; export;
var
  ASource: TStrings;
  ARlt: string;
  AJS: ISuperObject;
begin
  Result := False;
  ASource := TStringList.Create;

  if DLLPath = '' then PInterfaceInit();

  try
    ASource.Values['className'] := sClassName;
    ASource.Values['methodName'] := CarOutInfoMethod;
    ASource.Values['leaveTime'] := sLeaveTime;
    ASource.Values['orderId'] := sOrderID;

    ASource.Text := UTF8Encode(ASource.Text);
    if FHttpPost(WebURL, ASource, ARlt, iTimeOut) then begin
      AJS := SO(ARlt);
      Result := UpperCase(AJS.S['code'])='1'; // 1 SUCCESS
      StrCopy(sResult,PChar(string(AJS.S['data'])));
    end;
  finally
    FreeAndNil(ASource);         
  end;

end;


//function FEntrance(sPlateNum,sCarType,sTime,sRlt: PChar): Boolean;
//var
//  ASource: TStrings;
//  ARlt: string;
//  AJS: ISuperObject;
//begin
//  Result := False;
//  ASource := TStringList.Create;
//  if DLLPath = '' then PInterfaceInit();
//  try
//    ASource.Values['plateNumber'] := sPlateNum;
//    ASource.Values['mac'] := MAC;
//    ASource.Values['carType'] := sCarType;
//    ASource.Values['entranceTime'] := sTime;
//    ASource.Text := UTF8Encode(ASource.Text);
//    if FHttpPost(EntranceURL,ASource,ARlt,iTimeOut) then begin
//      AJS := SO(ARlt);
//      Result := UpperCase(AJS.S['status'])='SUCCESS';
//      StrCopy(sRlt,PChar(string(AJS.S['data'])));
//    end;
//  finally
//    FreeAndNil(ASource);
//  end;
//end;
//
//function FDeparture(sPlateNum,sTime,sRlt: PChar): Boolean;
//var
//  ASource: TStrings;
//  ARlt: string;
//  AJS: ISuperObject;
//begin
//  Result := False;
//  ASource := TStringList.Create;
//  if DLLPath = '' then PInterfaceInit();
//  try
//    ASource.Values['plateNumber'] := sPlateNum;
//    ASource.Values['mac'] := MAC;
//    ASource.Values['departureTime'] := sTime;
//    ASource.Text := UTF8Encode(ASource.Text);
//    if FHttpPost(DepartureURL,ASource,ARlt,iTimeOut) then begin
//      AJS := SO(ARlt);
//      Result := UpperCase(AJS.S['status'])='SUCCESS';
//      StrCopy(sRlt,PChar(string(AJS.S['data'])));
//    end;
//  finally
//    FreeAndNil(ASource);
//  end;
//end;
//
//function FQueryDeparture(sPlateNum,sTime,sRlt: PChar): Boolean;
//var
//  ASource: TStrings;
//  ARlt: string;
//  AJS: ISuperObject;
//begin
//  Result := False;
//  ASource := TStringList.Create;
//  if DLLPath = '' then PInterfaceInit();
//  try
//    ASource.Values['plateNumber'] := sPlateNum;
//    ASource.Values['mac'] := MAC;
//    ASource.Values['departureTime'] := sTime;
//    ASource.Text := UTF8Encode(ASource.Text);
//    if FHttpPost(QueryDepartureURL,ASource,ARlt,iTimeOut) then begin
//      AJS := SO(ARlt);
//      Result := UpperCase(AJS.S['status'])='SUCCESS';
//      if Result then begin
//        ARlt := 'receivable='+AJS.O['data'].S['receivable']+NL;
//        ARlt := ARlt+'paymoney='+AJS.O['data'].S['payMoney']+NL;
//        ARlt := ARlt+'arrearage='+AJS.O['data'].S['arrearage']+NL;
//        ARlt := ARlt+'departuretime='+AJS.O['data'].S['departureTime']+NL;
//        ARlt := ARlt+'status='+AJS.O['data'].S['status']+NL;
//      end else ARlt := AJS.S['data'];
//      StrCopy(sRlt,PChar(ARlt));
//    end;
//  finally
//    FreeAndNil(ASource);
//  end;
//end;
//
//function FChangerPlateNum(sOldPlateNum,sNewPlateNum,sRlt: PChar): Boolean;
//var
//  ASource: TStrings;
//  ARlt: string;
//  AJS: ISuperObject;
//begin
//  Result := False;
//  ASource := TStringList.Create;
//  if DLLPath = '' then PInterfaceInit();
//  try
//    ASource.Values['oldPlateNumber'] := sOldPlateNum;
//    ASource.Values['newPlateNumber'] := sNewPlateNum;
//    ASource.Values['mac'] := MAC;
//    ASource.Text := UTF8Encode(ASource.Text);
//    if FHttpPost(ChangeURL,ASource,ARlt,iTimeOut) then begin
//      AJS := SO(ARlt);
//      Result := UpperCase(AJS.S['status'])='SUCCESS';
//      StrCopy(sRlt,PChar(string(AJS.S['data'])));
//    end;
//  finally
//    FreeAndNil(ASource);
//  end;
//end;
//
//function FLogin(sLoginAccount,sPassword,sRlt: PChar): Boolean;
//var
//  ASource: TStrings;
//  ARlt: string;
//  AJS: ISuperObject;
//begin
//  Result := False;
//  ASource := TStringList.Create;
//  if DLLPath = '' then PInterfaceInit();
//  try
//    ASource.Values['loginAccount'] := sLoginAccount;
//    ASource.Values['password'] := sPassword;
//    ASource.Values['mac'] := MAC;
//    ASource.Text := UTF8Encode(ASource.Text);
//    if FHttpPost(LoginURL,ASource,ARlt,iTimeOut) then begin
//      AJS := SO(ARlt);
//      Result := UpperCase(AJS.S['status'])='SUCCESS';
//      StrCopy(sRlt,PChar(string(AJS.S['data'])));
//    end;
//  finally
//    FreeAndNil(ASource);
//  end;
//end;
//
//function FLoginOut(sRlt: PChar): Boolean;
//var
//  ASource: TStrings;
//  ARlt: string;
//  AJS: ISuperObject;
//begin
//  Result := False;
//  ASource := TStringList.Create;
//  if DLLPath = '' then PInterfaceInit();
//  try
//    ASource.Values['mac'] := MAC;
//    ASource.Text := UTF8Encode(ASource.Text);
//    if FHttpPost(LoginOutURL,ASource,ARlt,iTimeOut) then begin
//      AJS := SO(ARlt);
//      Result := UpperCase(AJS.S['status'])='SUCCESS';
//      StrCopy(sRlt,PChar(string(AJS.S['data'])));
//    end;
//  finally
//    FreeAndNil(ASource);
//  end;
//end;

initialization
  CoInitialize(nil);
finalization
  CoUninitialize;

end.
