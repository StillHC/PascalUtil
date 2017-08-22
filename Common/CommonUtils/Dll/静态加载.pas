unit CameraSDK;

interface

uses Windows;

const CAMDLLSDK = 'libHasdk.dll';

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
function HA_ConnectEx(ip: PMyChar; port: Word; usrName: PMyChar; password: PMyChar; errorNum: PInteger; channel: LongWord; autoReconn: Integer): TCamHandle; stdcall; external CAMDLLSDK name 'HA_ConnectEx';

{/*
* @brief   �Ƿ��������
* @param   cam[in]   ������
* @return  0 δ����
* @return  1 ������
*/}
function HA_Connected(cam: TCamHandle): Integer; stdcall; external CAMDLLSDK name 'HA_Connected';

{/*
* @brief   ��Ƶ����ͼ������������ļ�������ͼƬ����׺����Ϊbmp��jpg���༶·�������н���
* @param   cam[in]   ������
* @param   fileName[in]   �ļ���
* @return  0 ��ͼ�ɹ�
* @return  -1 ��ͼʧ��
*/}
function HA_CapImgToFile(cam: TCamHandle; const fileName: PMyChar): Integer; stdcall; external CAMDLLSDK name 'HA_CapImgToFile';

{/*
* @brief   �������
* @param   cam   ������
* @param   usrParam   �˰汾��Ч����0����
* @return  0 �����ɹ�
* @return  -1 ����ʧ��
*/}
function HA_Trigger(cam: TCamHandle; usrParam: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_Trigger';

{/*
* @brief   �򿪵�բ
* @param   cam[in]   ������
* @param   index[in]  ��բ��ţ���0��ʼ
* @param   timeDuration[in] ����ʱ�䣬500-5000ms
* @return  0 �ɹ�
* @return  <0 ʧ��
*/}
function HA_SetAlarmAuto(cam: TCamHandle; index: Integer; timeDuration: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_SetAlarmAuto';

{/*
* @brief   ע���͸������
* @param   cb[in] ͸�����ڷ������ݻص�
* @param   usrParam[in] �û�����
* @return  0 �ɹ�
* @return  <0 ʧ��
*/}
function HA_RegReadTSerialCbEx(cam: TCamHandle; cb: HA_ReadTSerialCb_t; usrParam: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_RegReadTSerialCbEx';

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
function HA_GetTSerial(cam: TCamHandle; index: Integer; baudrate: PInteger; parity: PInteger; databit: PInteger; stopbit: PInteger): Integer; stdcall; external CAMDLLSDK name 'HA_GetTSerial';

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
function HA_OpenTSerial(cam: TCamHandle; index: Integer; baudrate: Integer; parity: Integer; databit: Integer; stopbit: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_OpenTSerial';

{/*
* @brief   д͸������
* @param   cam[in]   ������
* @param   index[in] ��N·����,��1��ʼ��Ŀǰֻ֧��һ·����
* @param   data[in] ����
* @param   size[in] ���ݳ���
* @return  0 �ɹ�
* @return  <0 ʧ��
*/}
function HA_WriteTSerial(cam: TCamHandle; index: Integer; const data: PByte; size: Integer): Integer; stdcall; stdcall; external CAMDLLSDK name 'HA_WriteTSerial';

{/*
* @brief   �ر�͸������
* @param   cam[in]   ������
* @param   index[in] ��N·����,��1��ʼ��Ŀǰֻ֧��һ·����
* @return  0 �ɹ�
* @return  <0 ʧ��
*/}
function HA_CloseTSerial(cam: TCamHandle; index: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_CloseTSerial';

function HA_GetCustomerSN(cam: TCamHandle; sn: PMyChar; SNSize: PInteger): Integer; stdcall; external CAMDLLSDK name 'HA_GetCustomerSN';

function HA_WriteCustomerAuthCode(cam: TCamHandle; auth: PMyChar; size: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_WriteCustomerAuthCode';

function HA_ReadCustomerAuthCode(cam: TCamHandle; auth: PMyChar; size: PInteger): Integer; stdcall; external CAMDLLSDK name 'HA_ReadCustomerAuthCode';

{/*
* @brief   ��ȡ��բϵͳ�Ĺ���ģʽ
* @param   cam[in]   ������
* @param   offlineFlag[out] ����ģʽ��־��1Ϊ���ߣ�0Ϊ����, 2Ϊ�Զ������ѻ���飩
* @return  0 ��ȡ�ɹ�
* @return  <0 ��ȡʧ��
*/}
function HA_GetGatewayOfflineMode(cam: TCamHandle; offlineFlag: PInteger): Integer; stdcall; external CAMDLLSDK name 'HA_GetGatewayOfflineMode';

{/*
* @brief   ���õ�բϵͳ�Ĺ���ģʽ
* @param   cam[in]   ������
* @param   offlineFlag[in] ����ģʽ��־��1Ϊ���ߣ�0Ϊ����, 2Ϊ�Զ������ѻ���飩
* @return  0 ��ȡ�ɹ�
* @return  <0 ��ȡʧ��
*/}
function HA_SetGatewayOfflineMode(cam: TCamHandle; offlineFlag: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_SetGatewayOfflineMode';

{/*
* @brief   ���ð�����,����֮ǰ�����֮ǰ�İ���������
* @param   cam[in]   ������
* @param   allowList[int] ����������
* @param   listNum[in] ����������
* @return  0 ���óɹ�
* @return  -1 ����ʧ��
*/}
function HA_SetWhiteList(cam: TCamHandle; pAllowList: PHA_AllowList; listNum: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_SetWhiteList';

{/*
* @brief   ��ȡ������
* @param   cam[in]   ������
* @param   allowList[out] ����������buffer
* @param   maxNum[in] ����������buffer������
* @param   listNum[out] ��ȡ���İ���������
* @return  0 ��ȡ�ɹ�
* @return  <0 ��ȡʧ��
*/}
function HA_GetWhiteList(cam: TCamHandle; pAllowList: PHA_AllowList; maxNum: Integer; pListNum: PInteger): Integer; stdcall; external CAMDLLSDK name 'HA_GetWhiteList';

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
function HA_GetWhiteListByPage(cam: TCamHandle; pageNum: Integer; recordNumPerPage: Integer; pAllowList: PHA_AllowList; pListNum: PInteger; pTotalPages: PInteger): Integer; stdcall; external CAMDLLSDK name 'HA_GetWhiteListByPage';

{/*
* @brief   ��հ�����
* @param   cam[in]   ������
* @return  0 ��ȡ�ɹ�
* @return  <0 ��ȡʧ��
*/}
function HA_ClearWhiteList(cam: TCamHandle): Integer; stdcall; external CAMDLLSDK name 'HA_ClearWhiteList';

{/*
* @brief   ����һ��������
* @param   cam[in]   ������
* @param   wList[in]   ��������Ϣ
* @return  0 �ɹ�
* @return  <0 ʧ��
*/}
function HA_InsertWhiteList(cam: TCamHandle; pWList: PHA_AllowList): Integer; stdcall; external CAMDLLSDK name 'HA_InsertWhiteList';

{/*
* @brief   ���°�������Ϣ
* @param   cam[in]   ������
* @param   wList[in]   ��������Ϣ���������еĳ��ƺŲ���Ϊ��
* @return  0 �ɹ�
* @return  <0 ʧ��
*/}
function HA_UpdateWhiteListByPlate(cam: TCamHandle; pWList: PHA_AllowList): Integer; stdcall; stdcall; external CAMDLLSDK name 'HA_InsertWhiteList';

{/*
* @brief   ɾ����������Ϣ
* @param   cam[in]   ������
* @param   plate[in]   ���ƺ�
* @return  0 �ɹ�
* @return  <0 ʧ��
*/}
function HA_DeleteWhiteListByPlate(cam: TCamHandle; const plate: PMyChar): Integer; stdcall; external CAMDLLSDK name 'HA_DeleteWhiteListByPlate';

{/*
* @brief   ���Ұ�������Ϣ
* @param   cam[in]   ������
* @param   plate[in]   ���ƺ�
* @return  0 ���ҵ�
* @return  <0 ʧ��
*/}
function HA_SearchWhiteListByPlate(cam: TCamHandle; const plate: PMyChar; pWList: PHA_AllowList): Integer; stdcall; external CAMDLLSDK name 'HA_SearchWhiteListByPlate';

{/*
* @brief   ��ȡ��������Ŀ
* @param   cam[in]   ������
* @return  >=0 ��������Ŀ
* @return  <0 ʧ��
*/}
function HA_GetWhiteListCount(cam: TCamHandle): Integer; stdcall; external CAMDLLSDK name 'HA_GetWhiteListCount';

{/**
*  @brief д��jpgͼƬ��ָ���ļ����ڲ�������Ŀ¼����Ŀ¼�������д���
*  @param  [IN] filename �ļ���
*  @param  [IN] jpgBuf jpg����
*  @param  [IN] len jpg���ݳ���
*  @return ����ֵΪ0��ʾ�ɹ�������-1��ʾʧ��
*/ }
function HA_SaveJpg(const filename: PMyChar; const jpgBuf: PByte; len: Integer): Integer; stdcall; external CAMDLLSDK name 'HA_SaveJpg';

//maxCamNum[in] ��������������
procedure HA_InitEx(maxCamNum: LongWord); stdcall; external CAMDLLSDK name 'HA_InitEx';
procedure HA_DeInit(); stdcall; external CAMDLLSDK name 'HA_DeInit';

{/*
* @brief   �����ַ��ı����ʽ��Ĭ��ΪUTF8
* @brief   �����ַ����Ҫʹ��gbk���������ô˺�������Ϊgbk
* @param   charEncode[in]   �ַ�����
* @return  ��
*/}
procedure HA_SetCharEncode(charEncode: CHAR_ENCODE); stdcall; external CAMDLLSDK name 'HA_SetCharEncode';

{/*
* @brief   �Ͽ����
* @param   cam[in]   ������
* @return  ��
*/}
procedure HA_DisConnect(cam: TCamHandle); stdcall; external CAMDLLSDK name 'HA_DisConnect';

{/*
* @brief   ע�������¼��ص�����
* @param   cb[in] �ص�����ָ��
* @param   usrParam[in] �û�����
* @return  ��
*/}
procedure HA_RegConnectEventCbEx(cam: TCamHandle; cb: HA_ConnectEventCb_t; usrParam: Integer); stdcall; external CAMDLLSDK name 'HA_RegConnectEventCbEx';

{/*
* @brief   ע��ץ�����ݽ��ջص�����
* @param   cb[in] �ص�����ָ��
* @param   usrParam[in] �û�����
* @return  ��
*/}
procedure HA_RegDataReadCbEx(cam: TCamHandle; cb: HA_DataReadCb_t; usrParam: Integer); stdcall; external CAMDLLSDK name 'HA_RegDataReadCbEx';

{
/*
* @brief   ��ʼ��ʾ��Ƶ��
* @param   cam[in]   ������
* @param   hWnd[in]   ���ھ��
* @return  ��
*/
}
procedure HA_StartStream(cam: TCamHandle; hWnd: HWND); stdcall; external CAMDLLSDK name 'HA_StartStream';

{/*
* @brief   ��ֹ��ʾ��Ƶ��
* @param   cam[in]   ������
* @return  ��
*/}
procedure HA_StopStream(cam: TCamHandle); stdcall; external CAMDLLSDK name 'HA_StopStream';

implementation

initialization
  HA_InitEx(9);   //��ʼ�����������
  HA_SetCharEncode(CHAR_ENCODE_GBK);   //�ַ�������
finalization
  HA_DeInit;

end.

