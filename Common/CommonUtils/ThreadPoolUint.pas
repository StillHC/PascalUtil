{ 
  //单元：ThreadPoolUint 
  //说明：线程池  
}  
  
  
unit ThreadPoolUint;  
  
  
// 定义多线程共享读独占写条件编译  
{$DEFINE MULTI_THREAD_WRITE-READ}  
  
  
interface  
  
  
uses System.Classes, System.SysUtils, System.Math, System.Generics.Collections,  
  Vcl.Forms;  
  
  
type  
  
  
  // 要执行任务的记录  
  TaskRec = record  
    isSynchronize: Boolean; // 是否需要同步执行  
    TaskProc: TThreadProcedure; // 要执行任务的方法  
  end;  
  
  
  // 执行具体任务线程  
  TExecuteThread = class(TThread)  
  private  
    FProc: TThreadProcedure; // 要执行的任务方法  
    FIsCanTask: Boolean; // 是否可以执行任务  
    FIsSynchronize: Boolean; // 是否用同步执行  
  
  
    procedure showThreadID; // 显示线程编号(测试使用)  
  protected  
    procedure Execute; override;  
  public  
    constructor Create(CreateSuspended: Boolean); overload;  
  public  
    procedure StartTask(task: TaskRec); // 执行任务  
  end;  
  
  
  // 线程池类(单例模式的类，做为全局使用的类)  
  ThreadPool = class(TObject)  
  private  
{$IFDEF MULTI_THREAD_WRITE-READ}  
    FMREWSync: TMREWSync; // 共享读独占写变量  
{$ENDIF}  
    FTaskQueue: TQueue<TaskRec>; // 要执行任务队列  
    FTaskThreadList: TList<TExecuteThread>; // 执行任务线程List  
    FThreadMin: Integer; // 最小线程数量  
    FThreadMax: Integer; // 最大线程数量  
  
  
    // 共享读独占写方法  
    procedure BeginWrite; // 独占写开始  
    procedure EndWrite; // 独占写结束  
    procedure BeginRead; // 共享读开始  
    procedure EndRead; // 共享读结束  
  
  
    procedure StopTaskAndFree; // 停止执行任务并释放相关资源  
  
  
  protected  
    constructor CreateInstance(const minCount: Integer = 5;  
      const maxCount: Integer = 20);  
    class function AccessInstance(Request: Integer; const minCount: Integer = 5;  
      const maxCount: Integer = 20): ThreadPool;  
  public  
    constructor Create; // 构造函数  
    destructor destroy; override; // 析构函数  
    class function Instance(const minCount: Integer = 5;  
      const maxCount: Integer = 20): ThreadPool; // 实例化函数，客户端调用此函数  
    class procedure ReleaseInstance; // 释放资源函数，客户端调用此函数  
  
  
    procedure AddTask(task: TaskRec); // 添加要执行的任务  
    function IsHaveTask: Boolean; // 是否有要执行的任务  
    procedure ExecuteTask; // 执行任务  
    function DoNextTask(executeThread: TExecuteThread): Boolean; // 执行下一任务  
    function IsSuspend(executeThread: TExecuteThread): Boolean; // 挂起线程  
  
  
    function GetPoolState: string; // 得到线程池状态  
  
  
  end;  
  
  
implementation  
  
  
{$J+}  
  
  
{ MainUnit是为了测试引入的窗体单元，实际使用时候删除此单元和相关代码 }  
 // uses MainUnit;  
  
  
// -----------------------------------------------------------------------------  
  
  
// 构造函数  
constructor ThreadPool.Create;  
begin  
  inherited Create;  
  raise Exception.CreateFmt('Utils类只能通过Instance方法来创建和访问%s的实例！', [ClassName]);  
end;  
  
  
// 创建实例方法  
constructor ThreadPool.CreateInstance(const minCount: Integer = 5;  
  const maxCount: Integer = 20);  
var  
  i: Integer;  
begin  
  inherited Create;  
  
  
  // 需要在构造函数中初始化数据全部在此初始化  
  
  
{$IFDEF MULTI_THREAD_WRITE-READ}  
  // 创建多线程共享读独占写变量  
  Self.FMREWSync := TMREWSync.Create;  
{$ENDIF}  
  Self.FTaskQueue := TQueue<TaskRec>.Create; // 实例化要执行的任务队列  
  Self.FTaskThreadList := TList<TExecuteThread>.Create; // 实例化执行任务线程List  
  
  
  Self.FThreadMin := minCount; // 最小线程数量  
  Self.FThreadMax := maxCount; // 最大线程数量  
  
  
  // 创建最小数量的线程  
  for i := 0 to minCount - 1 do  
  begin  
    // 把线程添加到线程List中  
    Self.FTaskThreadList.Add(TExecuteThread.Create(true));  
  end;  
  
  
end;  
  
  
// 析构函数  
destructor ThreadPool.destroy;  
begin  
  
  
  // 需要析构前完成操作全部在此完成  
  
  
  Self.StopTaskAndFree; // 释放线程池资源  
  
  
{$IFDEF MULTI_THREAD_WRITE-READ}  
  // 释放多线程共享读独占写变量  
  Self.FMREWSync.Free;  
{$ENDIF}  
  if AccessInstance(0) = Self then  
  begin  
    AccessInstance(2);  
  end;  
  
  
  inherited destroy;  
end;  
  
  
class function ThreadPool.AccessInstance(Request: Integer;  
  const minCount: Integer = 5; const maxCount: Integer = 20): ThreadPool;  
const  
  FInstance: ThreadPool = nil;  
begin  
  { 
    AccessInstance(0):不作任何处理，供释放实例对象时使用。 
    AccessInstance(1):存在该实例时直接使用，不存在时则创建该实例。 
    AccessInstance(2):返回一个空指针，用于重新设置实例。 
  }  
  case Request of  
    0:  
      ;  
    1:  
      if not Assigned(FInstance) then  
      begin  
        FInstance := CreateInstance(minCount, maxCount);  
      end;  
    2:  
      FInstance := nil;  
  else  
    raise Exception.CreateFmt(' %d 是AccessInstance()中的非法调用参数。', [Request]);  
  end;  
  Result := FInstance;  
end;  
  
  
// 得到类实例  
class function ThreadPool.Instance(const minCount: Integer = 5;  
  const maxCount: Integer = 20): ThreadPool;  
begin  
  // 返回实例  
  Result := AccessInstance(1, minCount, maxCount);  
end;  
  
  
// 释放资源  
class procedure ThreadPool.ReleaseInstance;  
begin  
  AccessInstance(0).Free;  
end;  
  
  
{ ---- 类函数结束 ---- }  
  
  
procedure ThreadPool.StopTaskAndFree;  
var  
  whileCount: Integer; // while循环计数变量  
  taskThread: TExecuteThread;  
begin  
  // 1,释放线程List  
  try  
    Self.BeginWrite;  
  
  
    whileCount := 0; // while循环计数默认值为0  
    while whileCount < Self.FTaskThreadList.count do  
    begin  
      taskThread := Self.FTaskThreadList.Items[whileCount]; // 得到工作线程  
      Self.FTaskThreadList.Delete(whileCount); // 从线程列表中删除线程  
      taskThread.Terminate; // 终止线程  
  
  
      Inc(whileCount); // while循环计数递增  
    end;  
  
  
  finally  
    Self.EndWrite;  
    Self.FTaskThreadList.Free; // 释放线程List  
  end;  
  
  
  // 2,释放任务队列  
  Self.FTaskQueue.Clear;  
  Self.FTaskQueue.Free;  
  
  
end;  
  
  
// 独占写开始  
procedure ThreadPool.BeginWrite;  
begin  
{$IFDEF MULTI_THREAD_WRITE-READ}  
  Self.FMREWSync.BeginWrite;  
{$ENDIF}  
end;  
  
  
// 独占写结束  
procedure ThreadPool.EndWrite;  
begin  
{$IFDEF MULTI_THREAD_WRITE-READ}  
  Self.FMREWSync.EndWrite;  
{$ENDIF}  
end;  
  
  
// 共享读开始  
procedure ThreadPool.BeginRead;  
begin  
{$IFDEF MULTI_THREAD_WRITE-READ}  
  Self.FMREWSync.BeginRead;  
{$ENDIF}  
end;  
  
  
// 共享读结束  
procedure ThreadPool.EndRead;  
begin  
{$IFDEF MULTI_THREAD_WRITE-READ}  
  Self.FMREWSync.EndRead;  
{$ENDIF}  
end;  
  
  
// 给线程池添加任务  
procedure ThreadPool.AddTask(task: TaskRec);  
begin  
  
  
  // 添加任务到线程池中  
  try  
    Self.BeginWrite;  
    Self.FTaskQueue.Enqueue(task); // 把要执行任务加入任务队列  
  finally  
    Self.EndWrite;  
  end;  
  
  
end;  
  
  
// 是否有要执行的任务  
function ThreadPool.IsHaveTask: Boolean;  
var  
  temp: Boolean;  
begin  
  
  
  temp := false;  
  
  
  try  
    Self.BeginRead;  
  
  
    // 判断有要执行的任务  
    if Self.FTaskQueue.count > 0 then  
    begin  
      temp := true;  
    end;  
  finally  
    Self.EndRead;  
  end;  
  
  
  Result := temp;  
end;  
  
  
// 执行任务  
procedure ThreadPool.ExecuteTask;  
var  
  whileCount: Integer; // while循环计数变量  
  isCanCreateThread: Boolean; // 是否可以创建新线程  
  curThread: TExecuteThread;  
begin  
  
  
  // 在主界面memo中显示信息  
  Form1.log('开始执行任务'); // 测试使用,正式使用删除  
  
  
  if Self.IsHaveTask then  
  begin  
    // 1,判断是否有可以执行任务线程，如果有直接让线程执行  
    try  
      Self.BeginRead;  
  
  
      whileCount := 0; // while循环计数变量默认值为0  
      while whileCount < Self.FTaskThreadList.count do  
      begin  
  
  
        // 判断当前线程为挂起状态  
        if Self.FTaskThreadList.Items[whileCount].Suspended then  
        begin  
          Self.FTaskThreadList.Items[whileCount].Resume; // 唤醒挂起线程  
        end;  
  
  
        Inc(whileCount); // while循环计数递增  
  
  
      end;  
  
  
    finally  
      Self.EndRead;  
  
  
      // 判断有要执行的任务  
      if Self.IsHaveTask then  
      begin  
  
  
        // 是否可以创建新线程默认值为false  
        isCanCreateThread := false;  
  
  
        try  
          Self.BeginRead;  
  
  
          // 判断当前线程总数小于最大线程数量  
          if Self.FTaskThreadList.count < Self.FThreadMax then  
          begin  
            isCanCreateThread := true;  
            /// /是否可以创建新线程为true  
          end;  
  
  
        finally  
          Self.EndRead;  
  
  
          // 判断可以创建新线程  
          if isCanCreateThread then  
          begin  
  
  
            while Self.FTaskThreadList.count < Self.FThreadMax do  
            begin  
              // 创建新线程  
              curThread := TExecuteThread.Create(true);  
  
  
              try  
                Self.BeginWrite;  
                // 把新线程加入线程List  
                Self.FTaskThreadList.Add(curThread);  
              finally  
                Self.EndWrite;  
              end;  
  
  
              curThread.Resume;  
            end;  
  
  
          end;  
  
  
        end;  
  
  
      end;  
  
  
    end;  
  end;  
  
  
end;  
  
  
// 执行下一任务  
function ThreadPool.DoNextTask(executeThread: TExecuteThread): Boolean;  
var  
  isDoNextTask: Boolean; // 是否执行下一任务  
  nextTaskRec: TaskRec; // 下一任务结构  
  temp: Boolean;  
begin  
  
  
  temp := false; // 返回布尔值默认值为false  
  
  
  try  
  
  
    isDoNextTask := false; // 是否执行下一任务默认值为false  
  
  
    Self.BeginWrite;  
  
  
    // 判断有要执行的任务  
    if Self.FTaskQueue.count > 0 then  
    begin  
      nextTaskRec := Self.FTaskQueue.Dequeue;  
      isDoNextTask := true; // 是否执行任务为true  
      temp := true; // 返回布尔值为true  
    end;  
  
  
  finally  
    Self.EndWrite;  
  
  
    // 判断执行下一任务  
    if isDoNextTask then  
    begin  
      executeThread.StartTask(nextTaskRec); // 执行任务  
    end;  
  
  
  end;  
  
  
  Result := temp;  
end;  
  
  
// 判断线程是否需要挂起  
function ThreadPool.IsSuspend(executeThread: TExecuteThread): Boolean;  
var  
  temp: Boolean;  
  isRemove: Boolean;  
begin  
  
  
  temp := false;  
  
  
  try  
    Self.BeginRead;  
  
  
    isRemove := false; // 是否从线程List中删除当前线程默认值为false  
  
  
    // 判断线程数量是否大于最小线程数量  
    if Self.FTaskThreadList.count > Self.FThreadMin then  
    begin  
      isRemove := true; // 是否从线程List中删除当前线程为true  
    end  
    else  
    begin  
      temp := true; // 是否挂起为true  
    end;  
  finally  
    Self.EndRead;  
  
  
    // 判断从线程List中删除当前线程  
    if isRemove then  
    begin  
      try  
        Self.BeginWrite;  
  
  
        // 从线程List中删除当前线程  
        Self.FTaskThreadList.Remove(executeThread);  
      finally  
        Self.EndWrite;  
      end;  
    end;  
  
  
  end;  
  
  
  Result := temp;  
  
  
end;  
  
  
// 得到线程池状态  
function ThreadPool.GetPoolState: string;  
var  
  temp: string; // 返回值变量  
  i: Integer; // 循环计数变量  
  curThread: TExecuteThread;  
begin  
  
  
  temp := '线程状态:' + #13#10;;  
  
  
  temp := temp + '最小线程数:' + inttostr(Self.FThreadMin) + #13#10;  
  temp := temp + '最大线程数:' + inttostr(Self.FThreadMax) + #13#10;  
  
  
  try  
    Self.BeginRead;  
  
  
    temp := temp + '线程总数:' + inttostr(Self.FTaskThreadList.count) + #13#10;  
    temp := temp + #13#10;  
    temp := temp + '线程详细信息:' + #13#10;  
    temp := temp + #13#10;  
  
  
    for i := 0 to Self.FTaskThreadList.count - 1 do  
    begin  
      curThread := Self.FTaskThreadList.Items[i];  
      temp := temp + '线程-' + inttostr(i + 1) + #13#10;  
      temp := temp + '线程编号:' + inttostr(curThread.ThreadID) + #13#10;  
  
  
      // 是否挂起  
      if curThread.Suspended then  
      begin  
        temp := temp + '是否挂起: True' + #13#10;  
      end  
      else  
      begin  
        temp := temp + '是否挂起: False' + #13#10;  
      end;  
  
  
      // 是否可以执行任务  
      if curThread.FIsCanTask then  
      begin  
        temp := temp + '是否可以执行: True' + #13#10;  
      end  
      else  
      begin  
        temp := temp + '是否可以执行: False' + #13#10;  
      end;  
  
  
      // 是否同步执行任务  
      if curThread.FIsSynchronize then  
      begin  
        temp := temp + '是否同步执行: True' + #13#10;  
      end  
      else  
      begin  
        temp := temp + '是否同步执行: False' + #13#10;  
      end;  
  
  
      temp := temp + #13#10;  
    end;  
  
  
  finally  
    Self.EndRead;  
  end;  
  
  
  Result := Trim(temp);  
end;  
  
  
// -----------------------------------------------------------------------------  
  
  
// 执行任务线程构造函数  
constructor TExecuteThread.Create(CreateSuspended: Boolean);  
begin  
  inherited Create(CreateSuspended);  
  FreeOnTerminate := true;  
  
  
  Self.FIsCanTask := false; // 是否可以执行任务默认值为false  
  Self.FIsSynchronize := false; // 是否同步执行默认值为false  
end;  
  
  
// 显示线程编号(测试使用)  
procedure TExecuteThread.showThreadID;  
begin  
  with Form1 do  
  begin  
    Memo1.Lines.Add('停止执行任务线程编号:' + inttostr(Self.ThreadID))  
  end;  
  
  
end;  
  
  
// 执行任务线程的主方法  
procedure TExecuteThread.Execute;  
begin  
  while not Terminated do  
  begin  
    if Terminated then  
    begin  
      Break;  
    end;  
  
  
    // 判断可以执行任务  
    if Self.FIsCanTask then  
    begin  
      Self.FProc(); // 执行任务  
    end;  
  
  
    // 判断不执行任务  
    if ThreadPool.Instance.DoNextTask(Self) = false then  
    begin  
  
  
      // 显示执行任务线程编号  
      // Synchronize(Self.showThreadID); // 测试使用,正式使用删除  
  
  
      // 判断挂起当前线程  
      if ThreadPool.Instance.IsSuspend(Self) then  
      begin  
        Self.Suspend; // 挂起  
      end  
      else // 不挂起则终止当前线程  
      begin  
        Self.Terminate; // 终止  
      end;  
    end;  
  
  
    // 使界面有反应  
    Application.ProcessMessages;  
  
  
  end;  
end;  
  
  
// 设置要执行的任务  
procedure TExecuteThread.StartTask(task: TaskRec);  
begin  
  Self.FProc := task.TaskProc; // 设置要执行的任务  
  Self.FIsSynchronize := task.isSynchronize; // 设置是否同步执行  
  Self.FIsCanTask := true; // 设置是否可以执行任务为true  
end;  
  
  
end.  
  
  
// 演示例子代码：  
// unit MainUnit;  
  
  
// interface  
  
  
// uses  
//   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,  
//   System.Classes, Vcl.Graphics, System.DateUtils,  
//   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;  
  
  
// type  
//   TForm1 = class(TForm)  
//     Button1: TButton;  
//     Memo1: TMemo;  
//     Button2: TButton;  
//     Button3: TButton;  
//     Button7: TButton;  
//     teskCountEdt: TEdit;  
//     Button8: TButton;  
//     useTimeLab: TLabel;  
//     Label1: TLabel;  
//     procedure Button1Click(Sender: TObject);  
//     procedure Button7Click(Sender: TObject);  
//     procedure Button3Click(Sender: TObject);  
//     procedure FormDestroy(Sender: TObject);  
//     procedure Button2Click(Sender: TObject);  
//     procedure Button8Click(Sender: TObject);  
//   private  
//     { Private declarations }  
//   public  
//     { Public declarations }  
//     procedure log(lgoInfo: string); // log方法  
//   end;  
  
  
// var  
//   Form1: TForm1;  
  
  
//   repeatCount: Integer = 0;  
  
  
//   startTime: TDateTime; // 开始时间  
//   useTime: Double; // 用时  
  
  
// implementation  
  
  
// {$R *.dfm}  
  
  
// uses ThreadPoolUint;  
  
  
// procedure TaskFun;  
// var  
//   count: Integer;  
// begin  
  
  
//   // with Form1 do  
//   // begin  
//   //  
//   // inc(repeatCount);  
//   //  
//   // Memo1.Lines.Add(FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) +  
//   // ' repeat count-' + IntToStr(repeatCount));  
//   //  
//   // // count := 50000;  
//   // //  
//   // // while count > 0 do  
//   // // begin  
//   // // Dec(count);  
//   // // end;  
//   //  
//   // end;  
  
  
//   count := 0;  
//   while count < 100000 do  
//   begin  
//     inc(count);  
//   end;  
  
  
// end;  
  
  
// procedure TForm1.Button1Click(Sender: TObject);  
// begin  
//   ThreadPool.Instance(5, 20);  
//   self.log('线程池创建了');  
// end;  
  
  
// procedure TForm1.Button2Click(Sender: TObject);  
// var  
//   task: TaskRec;  
//   I: Integer;  
//   timeStr: string;  
//   posInt: Integer;  
// begin  
  
  
//   startTime := Now;  
//   useTimeLab.Caption := '0';  
  
  
//   // 演示代码开始-----------------------  
  
  
//   // 循环添加要执行的任务  
  
  
//   // 1,添加要执行任务  
//   for I := 0 to StrToInt(teskCountEdt.Text) - 1 do  
//   begin  
  
  
//     // 执行任务记录  
//     task.isSynchronize := false;  
//     task.TaskProc := TaskFun;  
  
  
//     // 添加要执行的任务  
//     ThreadPool.Instance.AddTask(task);  
//   end;  
  
  
//   // 2,让线程池执行任务  
//   ThreadPool.Instance.ExecuteTask;  
  
  
//   // 演示代码结束-----------------------  
  
  
//   useTime := MilliSecondSpan(startTime, Now);  
//   timeStr := FloatToStr(useTime);  
//   posInt := Pos('.', timeStr);  
//   Delete(timeStr, posInt, Length(timeStr) - (posInt - 1));  
//   useTimeLab.Caption := '共用时: ' + timeStr + ' 毫秒';  
  
  
// end;  
  
  
// procedure TForm1.Button3Click(Sender: TObject);  
// begin  
//   self.log(ThreadPool.Instance.GetPoolState); // 显示线程池状态  
// end;  
  
  
// procedure TForm1.Button7Click(Sender: TObject);  
// begin  
//   ThreadPool.ReleaseInstance;  
//   self.log('线程池释放了');  
// end;  
  
  
// procedure TForm1.Button8Click(Sender: TObject);  
// begin  
//   Memo1.Clear;  
//   repeatCount := 0;  
//   useTimeLab.Caption := '0';  
// end;  
  
  
// procedure TForm1.FormDestroy(Sender: TObject);  
// begin  
//   ThreadPool.ReleaseInstance;  
// end;  
  
  
// procedure TForm1.log(lgoInfo: string);  
// begin  
//   Memo1.Lines.Add('');  
//   Memo1.Lines.Add(FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + ' ' +  
//     trim(lgoInfo))  
// end;  
  
  
// end.  
  
  
// 调用线程池的代码是：  
//     //1,定义一个要执行任务的结构  
//     task.isSynchronize := false;//是否同步执行  
//     task.TaskProc := TaskFun;//要执行任务方法  
  
  
//     // 2，向线程池添加要执行的任务  
//     ThreadPool.Instance.AddTask(task);  
  
  
  
  
//   // 3,让线程池执行任务  
//   ThreadPool.Instance.ExecuteTask;  