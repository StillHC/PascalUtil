unit CameraSDK;

interface

uses Windows, SysUtils;

const
  MESSAGE_ID_CAR = 5;
//0-��ɫ 1-��ɫ 2-��ɫ 3-��ɫ 4-����(����Դ����)
const
  PLATE_COLOR_BLUE = 0;
  PLATE_COLOR_BLACK = 1;
  PLATE_COLOR_YELLOW = 2;
  PLATE_COLOR_WHITE = 3;
  PLATE_COLOR_NEWGREEN = 4;

const
  MAX_IMG_NUM = 4;
  MAX_VIDEO_NUM = 2;
  MAX_PLATE_IMG_NUM = 2;
  MAX_FACE_IMG_NUM = 32;

type
{$IF CompilerVersion<21}  //delphi2010��ǰΪansic,�Ժ�Ϊunicode
  MyChar = Char;
  PMyChar = PChar;
  MyString = string;
{$ELSE}
  MyChar = AnsiChar;
  PMyChar = PAnsiChar;
  MyString = AnsiString;
  {$LEGACYIFEND ON}  //������ǰ��Ԥ��ָ��{$IEND},�߰汾{$ENDIF}
{$IFEND}

  TCamHandle = Integer;
  
  pkg_vehicle = record
    sequence_id: LongWord; // �����, ����
    realtime_data: LongWord; // -
    packet_id: array[0..63] of MyChar; // - ��ID

    device_id: array[0..31] of MyChar; // �豸���
    addr_id: array[0..31] of MyChar; // �ص���
    direction_id: array[0..31] of MyChar; // ������
    camera_id: array[0..31] of MyChar; // ������
    lane_id: array[0..31] of MyChar; // �������
    addr_name: array[0..95] of MyChar; // �ص�����
    direction_name: array[0..95] of MyChar; // ��������

 // ����, ��������, �������Ŷ�
    plate: array[0..15] of MyChar; // ���ƺ���
    plate_x: Word; // �����ڻ����е����Ͻ�x����
    plate_y: Word; // �����ڻ����е����Ͻ�y����
    plate_w: Word; // �����ڻ����е����ؿ��
    plate_h: Word; // �����ڻ����е����ظ߶�
    plate_confidence: Integer; // - ���Ŷ�

    plate_color: Byte; // ������ɫ // 0-��ɫ 1-��ɫ 2-��ɫ 3-��ɫ 4-���� 5-��ɫ 6-��ɫ 7-��ɫ(KISE)
    vehicle_style: Byte; // - ��������
    vehicle_color: Byte; // - ������ɫ
    triger_type: Byte; // - ��������

    redlight_begin_sec: Integer;
    redlight_begin_usec: Integer;

    system_type: LongWord;
    vio_type: LongWord;

    vehicle_speed: Word;
    limit_speed: Word;

    recoImageIndex: Integer;
    vehicle_x: array[0..3] of Word;
    vehicle_y: array[0..3] of Word;
    vehicle_w: array[0..3] of Word;
    vehicle_h: array[0..3] of Word;

    red_lamp_x: array[0..3] of Word; // 4���������
    red_lamp_y: array[0..3] of Word;
    red_lamp_w: array[0..3] of Word;
    red_lamp_h: array[0..3] of Word;
    vio_red_lamp_index: Word; // ���ڵ���0ʱΪ��ǰ����ƶ�Ӧ������
    direction: Word; // ������ʻ����
    reserved: array[0..55] of MyChar;

    img_num: Byte; // ����Я����ͼƬ��Ŀ
    video_num: Byte; // ����Я������ƵƬ����Ŀ
    plate_img_num: Byte; // ����Я���ĳ���ͼƬ��Ŀ
    face_num: Byte; // ����Я��������ͼƬ��Ŀ

    img_len: array[0..MAX_IMG_NUM - 1] of LongWord; // ��Ӧÿ��ͼƬ�ĳ���
    video_len: array[0..MAX_VIDEO_NUM - 1] of LongWord; // ��Ӧÿ����Ƶ���ݵĳ���
    plate_img_len: array[0..MAX_PLATE_IMG_NUM - 1] of LongWord; // ��Ӧÿ�ų���ͼƬ�ĳ���
    face_img_len: array[0..MAX_FACE_IMG_NUM - 1] of LongWord; // ��Ӧÿ������ͼƬ�ĳ���

    img_format: array[0..7] of MyChar; // ͼƬ�ĸ�ʽ, ���� "jpg"
    video_format: array[0..7] of MyChar; // ��Ƶ��ʽ������ "avi"
    plate_img_format: array[0..7] of MyChar; // ����ͼƬ��ʽ������ "jpg"
    face_img_format: array[0..7] of MyChar; // ����ͼƬ��ʽ������ "jpg"

    img_time_sec: array[0..MAX_IMG_NUM - 1] of Integer;
    img_time_usec: array[0..MAX_IMG_NUM - 1] of Integer;

    video_start_sec: array[0..MAX_VIDEO_NUM - 1] of Integer;
    video_start_usec: array[0..MAX_VIDEO_NUM - 1] of Integer;
    video_end_sec: array[0..MAX_VIDEO_NUM - 1] of Integer;
    video_end_usec: array[0..MAX_VIDEO_NUM - 1] of Integer;

    face_x: array[0..MAX_FACE_IMG_NUM - 1] of Word;
    face_y: array[0..MAX_FACE_IMG_NUM - 1] of Word;
    face_w: array[0..MAX_FACE_IMG_NUM - 1] of Word;
    face_h: array[0..MAX_FACE_IMG_NUM - 1] of Word;

    img: array[0..MAX_IMG_NUM - 1] of PByte;
    video: array[0..MAX_VIDEO_NUM - 1] of PByte;
    plate_img: array[0..MAX_PLATE_IMG_NUM - 1] of PByte;
    face_img: array[0..MAX_FACE_IMG_NUM - 1] of PByte;
  end;

  Ppkg_vehicle = ^pkg_vehicle;

  CHAR_ENCODE = (CHAR_ENCODE_GBK, CHAR_ENCODE_UTF8);

  HA_AllowList = record
    plate: array[0..15] of MyChar; //���ƺ�
    plateColor: Word; //������ɫ
    year: Word; //��¼�Ĺ���ʱ��-��
    month: Word; //��
    day: Word; //��

    resv: array[0..15] of Integer;
  end;

  PHA_AllowList = ^HA_AllowList;

//event 1Ϊ������ 2Ϊ�����ж�
  HA_ConnectEventCb_t = procedure(cam: TCamHandle; const ip: PMyChar; port: Word; event: Integer; usrParam: Integer); stdcall;

// ץ�ļ�������ݽ��ջص�����
// dataType ��ͬ��data��Ӧ��ͬ�����ݽṹ������ο�demo����
  HA_DataReadCb_t = procedure(cam: TCamHandle; const ip: PMyChar; port: Word; dataType: Integer; const data: PMyChar; dataLen: LongWord; usrParam: Integer); stdcall;

  HA_ReadTSerialCb_t = procedure(cam: TCamHandle; index: Integer; const data: PByte; size: Integer; usrParam: Integer); stdcall;

//Ϊ��ע��Ϊ�ؼ�������ͨ����̬����
//��̬���غ�������������
var
  CamSDKHandle: THandle;
  {/*
  * @brief   �������
  * @param   ip[in]   ���ip
  * @param   port[in]   ����˿ڣ��̶�Ϊ9527
  * @param   usrName[in]   �û�����Ŀǰ�汾��Ч�����ռ���
  * @param   password[in]   ���룬Ŀǰ�汾��Ч�����ռ���
  * @param   errorNum[out]  ����ʧ�ܴ���ţ�0Ϊ���ӳɹ���-1Ϊ����ʧ��
  * @param   channel[in]  ����ͨ���ţ�������������û�ʹ�ã������������û�ֱ�Ӵ�0ͨ������
  * @param   autoReconn[in] �Զ�������־��Ϊ1�Զ�������0�����Զ�����
  * @return  autoReconnΪ1ʱ���̶�����������
  * @return  autoReconnΪ0ʱ�����ӳɹ�ʱ����������������ʧ��ʱ����NULL
  * @return  �����û�ʹ���Զ�����,autoReconnΪ1
  */}
  HA_ConnectEx: function (ip: PMyChar; port: Word; usrName: PMyChar; password: PMyChar; errorNum: PInteger; channel: LongWord; autoReconn: Integer): TCamHandle; stdcall;

  {/*
  * @brief   �Ƿ��������
  * @param   cam[in]   ������
  * @return  0 δ����
  * @return  1 ������
  */}
  HA_Connected: function (cam: TCamHandle): Integer; stdcall;

  {/*
  * @brief   ��Ƶ����ͼ������������ļ�������ͼƬ����׺����Ϊbmp��jpg���༶·�������н���
  * @param   cam[in]   ������
  * @param   fileName[in]   �ļ���
  * @return  0 ��ͼ�ɹ�
  * @return  -1 ��ͼʧ��
  */}
  HA_CapImgToFile: function (cam: TCamHandle; const fileName: PMyChar): Integer; stdcall; 

  {/*
  * @brief   �������
  * @param   cam   ������
  * @param   usrParam   �˰汾��Ч����0����
  * @return  0 �����ɹ�
  * @return  -1 ����ʧ��
  */}
  HA_Trigger: function (cam: TCamHandle; usrParam: Integer): Integer; stdcall; 

  {/*
  * @brief   �򿪵�բ
  * @param   cam[in]   ������
  * @param   index[in]  ��բ��ţ���0��ʼ
  * @param   timeDuration[in] ����ʱ�䣬500-5000ms
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_SetAlarmAuto: function (cam: TCamHandle; index: Integer; timeDuration: Integer): Integer; stdcall; 

  {/*
  * @brief   ע���͸������
  * @param   cb[in] ͸�����ڷ������ݻص�
  * @param   usrParam[in] �û�����
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_RegReadTSerialCbEx: function (cam: TCamHandle; cb: HA_ReadTSerialCb_t; usrParam: Integer): Integer; stdcall;

  {/*
  * @brief   ��ȡ͸�����ڲ���
  * @param   cam[in]   ������
  * @param   index[in] ��N·����,��1��ʼ��Ŀǰֻ֧��һ·����
  * @param   baudrate[out] ������
  * @param   baudrate:ֻ��Ϊ����ֵ��1200, 2400, 4800, 9600, 14400, 19200, 38400, 56000, 57600, 115200, 128000, 256000
  * @param   parity[out] У��λ��ֻ��Ϊ0����У��λ
  * @param   databit[out] ����λ��ֻ��Ϊ5��6��7��8
  * @param   stopbit[out] ֹͣλ��ֻ��Ϊ1��2
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_GetTSerial: function (cam: TCamHandle; index: Integer; baudrate: PInteger; parity: PInteger; databit: PInteger; stopbit: PInteger): Integer; stdcall;

  {/*
  * @brief   ��͸������
  * @param   cam[in]   ������
  * @param   index[in] ��N·����,��1��ʼ��Ŀǰֻ֧��һ·����
  * @param   baudrate[in] ������
  * @param   baudrate:ֻ��Ϊ����ֵ��1200, 2400, 4800, 9600, 14400, 19200, 38400, 56000, 57600, 115200, 128000, 256000
  * @param   parity[in] У��λ��0:none, 1:odd, 2:even, 3:mark, 4:space
  * @param   databit[in] ����λ��ֻ��Ϊ5��6��7��8
  * @param   stopbit[in] ֹͣλ��ֻ��Ϊ1��2
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_OpenTSerial: function (cam: TCamHandle; index: Integer; baudrate: Integer; parity: Integer; databit: Integer; stopbit: Integer): Integer; stdcall;

  {/*
  * @brief   д͸������
  * @param   cam[in]   ������
  * @param   index[in] ��N·����,��1��ʼ��Ŀǰֻ֧��һ·����
  * @param   data[in] ����
  * @param   size[in] ���ݳ���
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_WriteTSerial: function (cam: TCamHandle; index: Integer; const data: PByte; size: Integer): Integer; stdcall;

  {/*
  * @brief   �ر�͸������
  * @param   cam[in]   ������
  * @param   index[in] ��N·����,��1��ʼ��Ŀǰֻ֧��һ·����
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_CloseTSerial: function (cam: TCamHandle; index: Integer): Integer; stdcall; 

  HA_GetCustomerSN: function (cam: TCamHandle; sn: PMyChar; SNSize: PInteger): Integer; stdcall; 

  HA_WriteCustomerAuthCode: function (cam: TCamHandle; auth: PMyChar; size: Integer): Integer; stdcall; 

  HA_ReadCustomerAuthCode: function (cam: TCamHandle; auth: PMyChar; size: PInteger): Integer; stdcall; 

  {/*
  * @brief   ��ȡ��բϵͳ�Ĺ���ģʽ
  * @param   cam[in]   ������
  * @param   offlineFlag[out] ����ģʽ��־��1Ϊ���ߣ�0Ϊ����, 2Ϊ�Զ������ѻ���飩
  * @return  0 ��ȡ�ɹ�
  * @return  <0 ��ȡʧ��
  */}
  HA_GetGatewayOfflineMode: function (cam: TCamHandle; offlineFlag: PInteger): Integer; stdcall; 

  {/*
  * @brief   ���õ�բϵͳ�Ĺ���ģʽ
  * @param   cam[in]   ������
  * @param   offlineFlag[in] ����ģʽ��־��1Ϊ���ߣ�0Ϊ����, 2Ϊ�Զ������ѻ���飩
  * @return  0 ��ȡ�ɹ�
  * @return  <0 ��ȡʧ��
  */}
  HA_SetGatewayOfflineMode: function (cam: TCamHandle; offlineFlag: Integer): Integer; stdcall; 

  {/*
  * @brief   ���ð�����,����֮ǰ�����֮ǰ�İ���������
  * @param   cam[in]   ������
  * @param   allowList[int] ����������
  * @param   listNum[in] ����������
  * @return  0 ���óɹ�
  * @return  -1 ����ʧ��
  */}
  HA_SetWhiteList: function (cam: TCamHandle; pAllowList: PHA_AllowList; listNum: Integer): Integer; stdcall; 

  {/*
  * @brief   ��ȡ������
  * @param   cam[in]   ������
  * @param   allowList[out] ����������buffer
  * @param   maxNum[in] ����������buffer������
  * @param   listNum[out] ��ȡ���İ���������
  * @return  0 ��ȡ�ɹ�
  * @return  <0 ��ȡʧ��
  */}
  HA_GetWhiteList: function (cam: TCamHandle; pAllowList: PHA_AllowList; maxNum: Integer; pListNum: PInteger): Integer; stdcall; 

  {/*
  * @brief   ��ҳ��ѯ������
  * @param   cam[in]   ������
  * @param   pageNum[in]   ҳ�룬��1��ʼ
  * @param   recordNumPerPage[in]   ÿҳ��ʾ���������
  * @param   allowList[out] ����������buffer
  * @param   listNum[out] ��ȡ���İ���������
  * @param   totalPages[out] ������ҳ��
  * @return  0 ��ȡ�ɹ�
  * @return  <0 ��ȡʧ��
  */}
  HA_GetWhiteListByPage: function (cam: TCamHandle; pageNum: Integer; recordNumPerPage: Integer; pAllowList: PHA_AllowList; pListNum: PInteger; pTotalPages: PInteger): Integer; stdcall;

  {/*
  * @brief   ��հ�����
  * @param   cam[in]   ������
  * @return  0 ��ȡ�ɹ�
  * @return  <0 ��ȡʧ��
  */}
  HA_ClearWhiteList: function (cam: TCamHandle): Integer; stdcall; 

  {/*
  * @brief   ����һ��������
  * @param   cam[in]   ������
  * @param   wList[in]   ��������Ϣ
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_InsertWhiteList: function (cam: TCamHandle; pWList: PHA_AllowList): Integer; stdcall; 

  {/*
  * @brief   ���°�������Ϣ
  * @param   cam[in]   ������
  * @param   wList[in]   ��������Ϣ���������еĳ��ƺŲ���Ϊ��
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_UpdateWhiteListByPlate: function (cam: TCamHandle; pWList: PHA_AllowList): Integer; stdcall;

  {/*
  * @brief   ɾ����������Ϣ
  * @param   cam[in]   ������
  * @param   plate[in]   ���ƺ�
  * @return  0 �ɹ�
  * @return  <0 ʧ��
  */}
  HA_DeleteWhiteListByPlate: function (cam: TCamHandle; const plate: PMyChar): Integer; stdcall;

  {/*
  * @brief   ���Ұ�������Ϣ
  * @param   cam[in]   ������
  * @param   plate[in]   ���ƺ�
  * @return  0 ���ҵ�
  * @return  <0 ʧ��
  */}
  HA_SearchWhiteListByPlate: function (cam: TCamHandle; const plate: PMyChar; pWList: PHA_AllowList): Integer; stdcall; 

  {/*
  * @brief   ��ȡ��������Ŀ
  * @param   cam[in]   ������
  * @return  >=0 ��������Ŀ
  * @return  <0 ʧ��
  */}
  HA_GetWhiteListCount: function (cam: TCamHandle): Integer; stdcall; 

  {/**
  *  @brief д��jpgͼƬ��ָ���ļ����ڲ�������Ŀ¼����Ŀ¼�������д���
  *  @param  [IN] filename �ļ���
  *  @param  [IN] jpgBuf jpg����
  *  @param  [IN] len jpg���ݳ���
  *  @return ����ֵΪ0��ʾ�ɹ�������-1��ʾʧ��
  */ }
  HA_SaveJpg: function (const filename: PMyChar; const jpgBuf: PByte; len: Integer): Integer; stdcall;

  //maxCamNum[in] ��������������
  HA_InitEx: procedure (maxCamNum: LongWord); stdcall;
  HA_DeInit: procedure (); stdcall;

  {/*
  * @brief   �����ַ��ı����ʽ��Ĭ��ΪUTF8
  * @brief   �����ַ����Ҫʹ��gbk���������ô˺�������Ϊgbk
  * @param   charEncode[in]   �ַ�����
  * @return  ��
  */}
  HA_SetCharEncode: procedure (charEncode: CHAR_ENCODE); stdcall;

  {/*
  * @brief   �Ͽ����
  * @param   cam[in]   ������
  * @return  ��
  */}
  HA_DisConnect: procedure (cam: TCamHandle); stdcall;

  {/*
  * @brief   ע�������¼��ص�����
  * @param   cb[in] �ص�����ָ��
  * @param   usrParam[in] �û�����
  * @return  ��
  */}
  HA_RegConnectEventCbEx: procedure (cam: TCamHandle; cb: HA_ConnectEventCb_t; usrParam: Integer); stdcall;

  {/*
  * @brief   ע��ץ�����ݽ��ջص�����
  * @param   cb[in] �ص�����ָ��
  * @param   usrParam[in] �û�����
  * @return  ��
  */}
  HA_RegDataReadCbEx: procedure (cam: TCamHandle; cb: HA_DataReadCb_t; usrParam: Integer); stdcall;

  {
  /*
  * @brief   ��ʼ��ʾ��Ƶ��
  * @param   cam[in]   ������
  * @param   hWnd[in]   ���ھ��
  * @return  ��
  */
  }
  HA_StartStream: procedure (cam: TCamHandle; hWnd: HWND); stdcall;

  {/*
  * @brief   ��ֹ��ʾ��Ƶ��
  * @param   cam[in]   ������
  * @return  ��
  */}
  HA_StopStream: procedure (cam: TCamHandle); stdcall;

procedure LoadCameraSDK();
procedure UnLoadCameraSDK();

implementation

procedure LoadCameraSDK();
begin
  CamSDKHandle := LoadLibrary('libHasdk.dll');
  if CamSDKHandle < 32 then raise Exception.Create('�������������ʧ��');
    HA_ConnectEx := GetProcAddress(CamSDKHandle,'HA_ConnectEx');
    HA_Connected := GetProcAddress(CamSDKHandle,'HA_Connected');
    HA_CapImgToFile := GetProcAddress(CamSDKHandle,'HA_CapImgToFile');
    HA_Trigger := GetProcAddress(CamSDKHandle,'HA_Trigger');
    HA_SetAlarmAuto := GetProcAddress(CamSDKHandle,'HA_SetAlarmAuto');
    HA_RegReadTSerialCbEx := GetProcAddress(CamSDKHandle,'HA_RegReadTSerialCbEx');
    HA_GetTSerial := GetProcAddress(CamSDKHandle,'HA_GetTSerial');
    HA_OpenTSerial := GetProcAddress(CamSDKHandle,'HA_OpenTSerial');
    HA_WriteTSerial := GetProcAddress(CamSDKHandle,'HA_WriteTSerial');
    HA_CloseTSerial := GetProcAddress(CamSDKHandle,'HA_CloseTSerial');
    HA_GetCustomerSN := GetProcAddress(CamSDKHandle,'HA_GetCustomerSN');
    HA_WriteCustomerAuthCode := GetProcAddress(CamSDKHandle,'HA_WriteCustomerAuthCode');
    HA_ReadCustomerAuthCode := GetProcAddress(CamSDKHandle,'HA_ReadCustomerAuthCode');
    HA_GetGatewayOfflineMode := GetProcAddress(CamSDKHandle,'HA_GetGatewayOfflineMode');
    HA_SetGatewayOfflineMode := GetProcAddress(CamSDKHandle,'HA_SetGatewayOfflineMode');
    HA_SetWhiteList := GetProcAddress(CamSDKHandle,'HA_SetWhiteList');
    HA_GetWhiteList := GetProcAddress(CamSDKHandle,'HA_GetWhiteList');
    HA_GetWhiteListByPage := GetProcAddress(CamSDKHandle,'HA_GetWhiteListByPage');
    HA_ClearWhiteList := GetProcAddress(CamSDKHandle,'HA_ClearWhiteList');
    HA_InsertWhiteList := GetProcAddress(CamSDKHandle,'HA_InsertWhiteList');
    HA_UpdateWhiteListByPlate := GetProcAddress(CamSDKHandle,'HA_UpdateWhiteListByPlate');
    HA_DeleteWhiteListByPlate := GetProcAddress(CamSDKHandle,'HA_DeleteWhiteListByPlate');
    HA_SearchWhiteListByPlate := GetProcAddress(CamSDKHandle,'HA_SearchWhiteListByPlate');
    HA_GetWhiteListCount := GetProcAddress(CamSDKHandle,'HA_GetWhiteListCount');
    HA_SaveJpg := GetProcAddress(CamSDKHandle,'HA_SaveJpg');
    HA_InitEx := GetProcAddress(CamSDKHandle,'HA_InitEx');
    HA_DeInit := GetProcAddress(CamSDKHandle,'HA_DeInit');
    HA_SetCharEncode := GetProcAddress(CamSDKHandle,'HA_SetCharEncode');
    HA_DisConnect := GetProcAddress(CamSDKHandle,'HA_DisConnect');
    HA_RegConnectEventCbEx := GetProcAddress(CamSDKHandle,'HA_RegConnectEventCbEx');
    HA_RegDataReadCbEx := GetProcAddress(CamSDKHandle,'HA_RegDataReadCbEx');
    HA_StartStream := GetProcAddress(CamSDKHandle,'HA_StartStream');
    HA_StopStream := GetProcAddress(CamSDKHandle,'HA_StopStream');
end;

procedure UnLoadCameraSDK();
begin
  FreeLibrary(CamSDKHandle);
end;

initialization
  LoadCameraSDK();
  HA_InitEx(9);  //��ʼ����������Ӹ���
  HA_SetCharEncode(CHAR_ENCODE_GBK);   //�����ַ���
finalization
  HA_DeInit;
  UnLoadCameraSDK();

end.

