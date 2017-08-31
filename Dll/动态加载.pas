unit CameraSDK;

interface

uses Windows, SysUtils;

const
  MESSAGE_ID_CAR = 5;
//0-蓝色 1-黑色 2-黄色 3-白色 4-新绿(新能源车牌)
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
{$IF CompilerVersion<21}  //delphi2010以前为ansic,以后为unicode
  MyChar = Char;
  PMyChar = PChar;
  MyString = string;
{$ELSE}
  MyChar = AnsiChar;
  PMyChar = PAnsiChar;
  MyString = AnsiString;
  {$LEGACYIFEND ON}  //兼容以前编预译指令{$IEND},高版本{$ENDIF}
{$IFEND}

  TCamHandle = Integer;
  
  pkg_vehicle = record
    sequence_id: LongWord; // 包序号, 递增
    realtime_data: LongWord; // -
    packet_id: array[0..63] of MyChar; // - 包ID

    device_id: array[0..31] of MyChar; // 设备编号
    addr_id: array[0..31] of MyChar; // 地点编号
    direction_id: array[0..31] of MyChar; // 方向编号
    camera_id: array[0..31] of MyChar; // 相机编号
    lane_id: array[0..31] of MyChar; // 车道编号
    addr_name: array[0..95] of MyChar; // 地点名称
    direction_name: array[0..95] of MyChar; // 方向名称

 // 车牌, 车牌坐标, 车牌置信度
    plate: array[0..15] of MyChar; // 车牌号码
    plate_x: Word; // 车牌在画面中的左上角x坐标
    plate_y: Word; // 车牌在画面中的左上角y坐标
    plate_w: Word; // 车牌在画面中的像素宽度
    plate_h: Word; // 车牌在画面中的像素高度
    plate_confidence: Integer; // - 置信度

    plate_color: Byte; // 车牌颜色 // 0-蓝色 1-黑色 2-黄色 3-白色 4-新绿 5-红色 6-灰色 7-紫色(KISE)
    vehicle_style: Byte; // - 车辆类型
    vehicle_color: Byte; // - 车身颜色
    triger_type: Byte; // - 触发类型

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

    red_lamp_x: array[0..3] of Word; // 4方向灯区域
    red_lamp_y: array[0..3] of Word;
    red_lamp_w: array[0..3] of Word;
    red_lamp_h: array[0..3] of Word;
    vio_red_lamp_index: Word; // 大于等于0时为当前闯红灯对应灯索引
    direction: Word; // 车辆行驶方向
    reserved: array[0..55] of MyChar;

    img_num: Byte; // 本次携带的图片数目
    video_num: Byte; // 本次携带的视频片段数目
    plate_img_num: Byte; // 本次携带的车牌图片数目
    face_num: Byte; // 本次携带的人脸图片数目

    img_len: array[0..MAX_IMG_NUM - 1] of LongWord; // 对应每张图片的长度
    video_len: array[0..MAX_VIDEO_NUM - 1] of LongWord; // 对应每段视频数据的长度
    plate_img_len: array[0..MAX_PLATE_IMG_NUM - 1] of LongWord; // 对应每张车牌图片的长度
    face_img_len: array[0..MAX_FACE_IMG_NUM - 1] of LongWord; // 对应每张人脸图片的长度

    img_format: array[0..7] of MyChar; // 图片的格式, 例如 "jpg"
    video_format: array[0..7] of MyChar; // 视频格式，例如 "avi"
    plate_img_format: array[0..7] of MyChar; // 车牌图片格式，例如 "jpg"
    face_img_format: array[0..7] of MyChar; // 人脸图片格式，例如 "jpg"

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
    plate: array[0..15] of MyChar; //车牌号
    plateColor: Word; //车牌颜色
    year: Word; //记录的过期时间-年
    month: Word; //月
    day: Word; //日

    resv: array[0..15] of Integer;
  end;

  PHA_AllowList = ^HA_AllowList;

//event 1为已连接 2为连接中断
  HA_ConnectEventCb_t = procedure(cam: TCamHandle; const ip: PMyChar; port: Word; event: Integer; usrParam: Integer); stdcall;

// 抓拍及检测数据接收回调函数
// dataType 不同，data对应不同的数据结构，具体参考demo代码
  HA_DataReadCb_t = procedure(cam: TCamHandle; const ip: PMyChar; port: Word; dataType: Integer; const data: PMyChar; dataLen: LongWord; usrParam: Integer); stdcall;

  HA_ReadTSerialCb_t = procedure(cam: TCamHandle; index: Integer; const data: PByte; size: Integer; usrParam: Integer); stdcall;

//为了注册为控件函数都通过动态加载
//动态加载函数变量声明区
var
  CamSDKHandle: THandle;
  {/*
  * @brief   连接相机
  * @param   ip[in]   相机ip
  * @param   port[in]   相机端口，固定为9527
  * @param   usrName[in]   用户名，目前版本无效，传空即可
  * @param   password[in]   密码，目前版本无效，传空即可
  * @param   errorNum[out]  连接失败错误号，0为连接成功，-1为连接失败
  * @param   channel[in]  码流通道号，有特殊需求的用户使用，无特殊需求用户直接传0通道即可
  * @param   autoReconn[in] 自动重连标志，为1自动重连，0不会自动重连
  * @return  autoReconn为1时，固定返回相机句柄
  * @return  autoReconn为0时，连接成功时返回相机句柄，连接失败时返回NULL
  * @return  建议用户使用自动重连,autoReconn为1
  */}
  HA_ConnectEx: function (ip: PMyChar; port: Word; usrName: PMyChar; password: PMyChar; errorNum: PInteger; channel: LongWord; autoReconn: Integer): TCamHandle; stdcall;

  {/*
  * @brief   是否连接相机
  * @param   cam[in]   相机句柄
  * @return  0 未连接
  * @return  1 已连接
  */}
  HA_Connected: function (cam: TCamHandle): Integer; stdcall;

  {/*
  * @brief   视频流截图，并按传入的文件名保存图片，后缀可以为bmp，jpg，多级路径请自行建立
  * @param   cam[in]   相机句柄
  * @param   fileName[in]   文件名
  * @return  0 截图成功
  * @return  -1 截图失败
  */}
  HA_CapImgToFile: function (cam: TCamHandle; const fileName: PMyChar): Integer; stdcall; 

  {/*
  * @brief   触发相机
  * @param   cam   相机句柄
  * @param   usrParam   此版本无效，传0即可
  * @return  0 触发成功
  * @return  -1 触发失败
  */}
  HA_Trigger: function (cam: TCamHandle; usrParam: Integer): Integer; stdcall; 

  {/*
  * @brief   打开道闸
  * @param   cam[in]   相机句柄
  * @param   index[in]  道闸序号，从0开始
  * @param   timeDuration[in] 持续时间，500-5000ms
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_SetAlarmAuto: function (cam: TCamHandle; index: Integer; timeDuration: Integer): Integer; stdcall; 

  {/*
  * @brief   注册读透明串口
  * @param   cb[in] 透明串口返回数据回调
  * @param   usrParam[in] 用户参数
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_RegReadTSerialCbEx: function (cam: TCamHandle; cb: HA_ReadTSerialCb_t; usrParam: Integer): Integer; stdcall;

  {/*
  * @brief   获取透明串口参数
  * @param   cam[in]   相机句柄
  * @param   index[in] 第N路串口,从1开始。目前只支持一路串口
  * @param   baudrate[out] 波特率
  * @param   baudrate:只能为以下值：1200, 2400, 4800, 9600, 14400, 19200, 38400, 56000, 57600, 115200, 128000, 256000
  * @param   parity[out] 校验位。只能为0，无校验位
  * @param   databit[out] 数据位，只能为5，6，7，8
  * @param   stopbit[out] 停止位，只能为1，2
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_GetTSerial: function (cam: TCamHandle; index: Integer; baudrate: PInteger; parity: PInteger; databit: PInteger; stopbit: PInteger): Integer; stdcall;

  {/*
  * @brief   打开透明串口
  * @param   cam[in]   相机句柄
  * @param   index[in] 第N路串口,从1开始。目前只支持一路串口
  * @param   baudrate[in] 波特率
  * @param   baudrate:只能为以下值：1200, 2400, 4800, 9600, 14400, 19200, 38400, 56000, 57600, 115200, 128000, 256000
  * @param   parity[in] 校验位。0:none, 1:odd, 2:even, 3:mark, 4:space
  * @param   databit[in] 数据位，只能为5，6，7，8
  * @param   stopbit[in] 停止位，只能为1，2
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_OpenTSerial: function (cam: TCamHandle; index: Integer; baudrate: Integer; parity: Integer; databit: Integer; stopbit: Integer): Integer; stdcall;

  {/*
  * @brief   写透明串口
  * @param   cam[in]   相机句柄
  * @param   index[in] 第N路串口,从1开始。目前只支持一路串口
  * @param   data[in] 数据
  * @param   size[in] 数据长度
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_WriteTSerial: function (cam: TCamHandle; index: Integer; const data: PByte; size: Integer): Integer; stdcall;

  {/*
  * @brief   关闭透明串口
  * @param   cam[in]   相机句柄
  * @param   index[in] 第N路串口,从1开始。目前只支持一路串口
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_CloseTSerial: function (cam: TCamHandle; index: Integer): Integer; stdcall; 

  HA_GetCustomerSN: function (cam: TCamHandle; sn: PMyChar; SNSize: PInteger): Integer; stdcall; 

  HA_WriteCustomerAuthCode: function (cam: TCamHandle; auth: PMyChar; size: Integer): Integer; stdcall; 

  HA_ReadCustomerAuthCode: function (cam: TCamHandle; auth: PMyChar; size: PInteger): Integer; stdcall; 

  {/*
  * @brief   获取道闸系统的工作模式
  * @param   cam[in]   相机句柄
  * @param   offlineFlag[out] 离线模式标志，1为离线，0为在线, 2为自动（即脱机检查）
  * @return  0 获取成功
  * @return  <0 获取失败
  */}
  HA_GetGatewayOfflineMode: function (cam: TCamHandle; offlineFlag: PInteger): Integer; stdcall; 

  {/*
  * @brief   设置道闸系统的工作模式
  * @param   cam[in]   相机句柄
  * @param   offlineFlag[in] 离线模式标志，1为离线，0为在线, 2为自动（即脱机检查）
  * @return  0 获取成功
  * @return  <0 获取失败
  */}
  HA_SetGatewayOfflineMode: function (cam: TCamHandle; offlineFlag: Integer): Integer; stdcall; 

  {/*
  * @brief   设置白名单,设置之前会清除之前的白名单数据
  * @param   cam[in]   相机句柄
  * @param   allowList[int] 白名单数组
  * @param   listNum[in] 白名单个数
  * @return  0 设置成功
  * @return  -1 设置失败
  */}
  HA_SetWhiteList: function (cam: TCamHandle; pAllowList: PHA_AllowList; listNum: Integer): Integer; stdcall; 

  {/*
  * @brief   获取白名单
  * @param   cam[in]   相机句柄
  * @param   allowList[out] 白名单数组buffer
  * @param   maxNum[in] 白名单数组buffer最大个数
  * @param   listNum[out] 获取到的白名单个数
  * @return  0 获取成功
  * @return  <0 获取失败
  */}
  HA_GetWhiteList: function (cam: TCamHandle; pAllowList: PHA_AllowList; maxNum: Integer; pListNum: PInteger): Integer; stdcall; 

  {/*
  * @brief   按页查询白名单
  * @param   cam[in]   相机句柄
  * @param   pageNum[in]   页码，从1开始
  * @param   recordNumPerPage[in]   每页显示的最大条数
  * @param   allowList[out] 白名单数组buffer
  * @param   listNum[out] 获取到的白名单个数
  * @param   totalPages[out] 返回最页数
  * @return  0 获取成功
  * @return  <0 获取失败
  */}
  HA_GetWhiteListByPage: function (cam: TCamHandle; pageNum: Integer; recordNumPerPage: Integer; pAllowList: PHA_AllowList; pListNum: PInteger; pTotalPages: PInteger): Integer; stdcall;

  {/*
  * @brief   清空白名单
  * @param   cam[in]   相机句柄
  * @return  0 获取成功
  * @return  <0 获取失败
  */}
  HA_ClearWhiteList: function (cam: TCamHandle): Integer; stdcall; 

  {/*
  * @brief   插入一个白名单
  * @param   cam[in]   相机句柄
  * @param   wList[in]   白名单信息
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_InsertWhiteList: function (cam: TCamHandle; pWList: PHA_AllowList): Integer; stdcall; 

  {/*
  * @brief   更新白名单信息
  * @param   cam[in]   相机句柄
  * @param   wList[in]   白名单信息，白名单中的车牌号不能为空
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_UpdateWhiteListByPlate: function (cam: TCamHandle; pWList: PHA_AllowList): Integer; stdcall;

  {/*
  * @brief   删除白名单信息
  * @param   cam[in]   相机句柄
  * @param   plate[in]   车牌号
  * @return  0 成功
  * @return  <0 失败
  */}
  HA_DeleteWhiteListByPlate: function (cam: TCamHandle; const plate: PMyChar): Integer; stdcall;

  {/*
  * @brief   查找白名单信息
  * @param   cam[in]   相机句柄
  * @param   plate[in]   车牌号
  * @return  0 查找到
  * @return  <0 失败
  */}
  HA_SearchWhiteListByPlate: function (cam: TCamHandle; const plate: PMyChar; pWList: PHA_AllowList): Integer; stdcall; 

  {/*
  * @brief   获取白名单数目
  * @param   cam[in]   相机句柄
  * @return  >=0 白名单数目
  * @return  <0 失败
  */}
  HA_GetWhiteListCount: function (cam: TCamHandle): Integer; stdcall; 

  {/**
  *  @brief 写入jpg图片到指定文件，内部不创建目录，带目录的请自行创建
  *  @param  [IN] filename 文件名
  *  @param  [IN] jpgBuf jpg数据
  *  @param  [IN] len jpg数据长度
  *  @return 返回值为0表示成功，返回-1表示失败
  */ }
  HA_SaveJpg: function (const filename: PMyChar; const jpgBuf: PByte; len: Integer): Integer; stdcall;

  //maxCamNum[in] 最大连接相机数。
  HA_InitEx: procedure (maxCamNum: LongWord); stdcall;
  HA_DeInit: procedure (); stdcall;

  {/*
  * @brief   设置字符的编码格式，默认为UTF8
  * @brief   车牌字符如果要使用gbk，则必须调用此函数设置为gbk
  * @param   charEncode[in]   字符类型
  * @return  无
  */}
  HA_SetCharEncode: procedure (charEncode: CHAR_ENCODE); stdcall;

  {/*
  * @brief   断开相机
  * @param   cam[in]   相机句柄
  * @return  无
  */}
  HA_DisConnect: procedure (cam: TCamHandle); stdcall;

  {/*
  * @brief   注册连接事件回调函数
  * @param   cb[in] 回调函数指针
  * @param   usrParam[in] 用户参数
  * @return  无
  */}
  HA_RegConnectEventCbEx: procedure (cam: TCamHandle; cb: HA_ConnectEventCb_t; usrParam: Integer); stdcall;

  {/*
  * @brief   注册抓拍数据接收回调函数
  * @param   cb[in] 回调函数指针
  * @param   usrParam[in] 用户参数
  * @return  无
  */}
  HA_RegDataReadCbEx: procedure (cam: TCamHandle; cb: HA_DataReadCb_t; usrParam: Integer); stdcall;

  {
  /*
  * @brief   开始显示视频流
  * @param   cam[in]   相机句柄
  * @param   hWnd[in]   窗口句柄
  * @return  无
  */
  }
  HA_StartStream: procedure (cam: TCamHandle; hWnd: HWND); stdcall;

  {/*
  * @brief   终止显示视频流
  * @param   cam[in]   相机句柄
  * @return  无
  */}
  HA_StopStream: procedure (cam: TCamHandle); stdcall;

procedure LoadCameraSDK();
procedure UnLoadCameraSDK();

implementation

procedure LoadCameraSDK();
begin
  CamSDKHandle := LoadLibrary('libHasdk.dll');
  if CamSDKHandle < 32 then raise Exception.Create('摄像机驱动加载失败');
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
  HA_InitEx(9);  //初始化摄像机连接个数
  HA_SetCharEncode(CHAR_ENCODE_GBK);   //设置字符集
finalization
  HA_DeInit;
  UnLoadCameraSDK();

end.

