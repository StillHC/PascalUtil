//Registry 单元

procedure TFrmMain.PAutoRun;
var
  tempreg:TRegistry;//定义一个注册表访问组件先
  Str:String;
begin
   tempreg:=TRegistry.Create;///创建一个对象并付给tempreg变量
   tempreg.RootKey:=HKEY_LOCAL_MACHINE;//设置根健
   tempreg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Run',True);//打开   
   Str:=Application.ExeName;
   tempreg.WriteString('TDataIO',Str);//写入键名和运行程序路径
   tempreg.Closekey;
   tempreg.Free;
end;