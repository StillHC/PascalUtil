unit uFunction;

interface

uses  Windows, Messages, SysUtils, Classes, Variants, StdCtrls, IdBaseComponent,
      IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Dialogs, xmldom,
      XMLIntf, msxmldom, XMLDoc, superobject, ActiveX;

const NL=#13#10;                  //�س����з�

{*------------------------------------------------------------------------------
  Function tips: �ӿڳ�ʼ���� ��xml�ж�ȡ���á�
-------------------------------------------------------------------------------}  
procedure PInterfaceInit();       //����dll·�����ӿڵ�ַ

{*------------------------------------------------------------------------------
  Function tips: HTTP Post ������װ��
  @param AURL   ͳһ��Դ��λ��
  @param ASource Post ����
  @param sRlt
  @param TimeOut ��Ӧ��ʱ
  @return
-------------------------------------------------------------------------------}            
function FHttpPost(AURL: string; const ASource: TStrings; var sRlt: string; TimeOut: Integer=0): Boolean;     //POS����

{*------------------------------------------------------------------------------

   Function tips: ��ȡ�����ó�����Ϣ
  @param slastGetTime �ϴε���ʱ��
  @param sResult Web��Ӧ�����
  @return
-------------------------------------------------------------------------------}        
function FGetExCarOrderInfo(slastGetTime, sResult:PChar):Boolean;stdcall; export;
{*------------------------------------------------------------------------------
  Function Tips : ���ͳ��������Ϣ��
  @param sOrderID  ������
  @param backUpTime   ���ʱ��
  @param sResult       Web��Ӧ�����
  @return
-------------------------------------------------------------------------------}          
function FExCarInInfo(sOrderID, sbackUpTime, sResult:PChar):Boolean;stdcall; export;

{*------------------------------------------------------------------------------
  Function Tips: ���ͳ���������Ϣ��
  @param sOrderID
  @param sLeaveTime
  @param sResult
  @return
-------------------------------------------------------------------------------}          
function FExCarOutInfo(sOrderID, sLeaveTime, sResult:PChar):Boolean;stdcall; export;

//function FEntrance(sPlateNum,sCarType,sTime,sRlt: PChar): Boolean; stdcall; export;              //�����볡
//function FDeparture(sPlateNum,sTime,sRlt: PChar): Boolean; stdcall; export;                      //�����볡
//function FQueryDeparture(sPlateNum,sTime,sRlt: PChar): Boolean; stdcall; export;                 //�����볡��ѯ
//function FChangerPlateNum(sOldPlateNum,sNewPlateNum,sRlt: PChar): Boolean; stdcall; export;      //���ĳ��ƺ�
//function FLogin(sLoginAccount,sPassword,sRlt: PChar): Boolean; stdcall; export;                  //�û���½
//function FLoginOut(sRlt: PChar): Boolean; stdcall; export;                                       //�û��˳���½

//exports FEntrance,FDeparture,FQueryDeparture,FChangerPlateNum,FLogin,FLoginOut;

{dll ��¶�ӿ�}
exports
   FGetExCarOrderInfo, FExCarInInfo, FExCarOutInfo;

var
//  EntranceURL,DepartureURL,QueryDepartureURL,ChangeURL,LoginURL,LoginOutURL,DLLPath,MAC: string;      //�ӿ�URL��ַ
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
    MessageBox(0,'�ӿ������ļ���ParkingSystem_InterfaceConfig.xml�������ڣ�', '����', MB_OK + MB_ICONWARNING);
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
  HTTP.HTTPOptions := HTTP.HTTPOptions+[hoKeepOrigProtocol];  //���������в�ʹ����Э��汾��Ч
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
