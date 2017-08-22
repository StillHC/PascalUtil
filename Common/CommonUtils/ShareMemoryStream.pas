{
共享内存封装.
封装成了MemoryStream的形式.
用法如下:
  var
    ms : TShareMemStream;
  ms := TShareMemStream.Create('Global\test', FILE_MAP_ALL_ACCESS, 4096);
  if (ms.Memory <> nil)(*and(ms.AlreadyExists)*) then
  //如果创建失败Memory指针是空指针
  //AlreadyExists表示已经存在了,也就是之前被别人(也许是别的进程)创建过了.
  begin
    //获取锁,多个进程线程访问安全访问
    if ms.GetLock(INFINITE) then
    begin
      ms.read(...);
      ms.write(...);
      //释放锁
      ms.ReleaseLock();
    end;
  end;
  ms.free;
}
unit ShareMemoryStream;

interface

uses
  SysUtils, Classes, Syncobjs, Windows;

type
  TShareMemStream = class(TCustomMemoryStream)
  private
    FFile: THandle;
    FSize: Int64;
    FEvent: TEvent;
    FAlreadyExists: Boolean;
  protected
    property Event: TEvent read FEvent;
  public
    constructor Create(const ShareName: string;
      ACCESS: DWORD = FILE_MAP_ALL_ACCESS; ASize: Int64 = 16 * 1024 * 1024);
    destructor Destroy; override;

    function Write(const Buffer; Count: Integer): Longint; override;

    function GetLock(ATimeOut: DWORD = INFINITE): Boolean;
    procedure ReleaseLock();

    property AlreadyExists: Boolean read FAlreadyExists;
  end;

implementation

procedure InitSecAttr(var sa: TSecurityAttributes; var sd: TSecurityDescriptor);
begin
  sa.nLength := sizeOf(sa);
  sa.lpSecurityDescriptor := @sd;
  sa.bInheritHandle := false;
  InitializeSecurityDescriptor(@sd, SECURITY_DESCRIPTOR_REVISION);
  SetSecurityDescriptorDacl(@sd, true, nil, false);
end;

{ TShareMem }

constructor TShareMemStream.Create(const ShareName: string; ACCESS: DWORD;
  ASize: Int64);
var
  sa: TSecurityAttributes;
  sd: TSecurityDescriptor;
  lprotect: DWORD;
  e: Integer;
begin
  FEvent := TEvent.Create(nil, false, true, ShareName +
    '_TShareMemStream_Event');
  FSize := ASize;
  InitSecAttr(sa, sd);

  ACCESS := ACCESS and (not SECTION_MAP_EXECUTE);

  if (ACCESS and FILE_MAP_WRITE) = FILE_MAP_WRITE then
    lprotect := PAGE_READWRITE
  else if (ACCESS and FILE_MAP_READ) = FILE_MAP_READ then
    lprotect := PAGE_READONLY;

  FFile := CreateFileMapping(INVALID_HANDLE_VALUE, @sa, lprotect,
    Int64Rec(FSize).Hi, Int64Rec(FSize).Lo, PChar(ShareName));
  e := GetLastError;
  if FFile = 0 then
    Exit;
  FAlreadyExists := e = ERROR_ALREADY_EXISTS;
  SetPointer(MapViewOfFile(FFile, ACCESS, 0, 0, Int64Rec(FSize).Lo),
    Int64Rec(FSize).Lo);
end;

destructor TShareMemStream.Destroy;
begin
  if Memory <> nil then
  begin
    UnmapViewOfFile(Memory);
    SetPointer(nil, 0);
    Position := 0;
  end;
  if FFile <> 0 then
  begin
    CloseHandle(FFile);
    FFile := 0;
  end;
  FEvent.Free;
  inherited Destroy;
end;

function TShareMemStream.GetLock(ATimeOut: DWORD): Boolean;
var
  wr : TWaitResult;
begin
  wr := FEvent.WaitFor(ATimeOut);
  Result := wr = wrSignaled;
end;

procedure TShareMemStream.ReleaseLock;
begin
  FEvent.SetEvent;
end;

function TShareMemStream.Write(const Buffer; Count: Integer): Longint;
begin
  Result := 0;
  if (Size - Position) >= Count then
  begin
    System.Move(Buffer, PByte(Memory)[Position], Count);
    Position := Position + Count;
    Result := Count;
  end;
end;


end.
