var jo: ISuperObject;
const JsonStr = '{"No1":"张三", "No2":"李四"}'

//1、字符串构建 
jo := SO(JsonStr);
//或者
jo := TSuperObject.ParseString(JsonStr);
// 2、文件构建
path = 'c:\temp\json.txt';
SO(JsonStr).SaveTo(path); {这就产生并保存了 json 文件}
jo := TSuperObject.ParseFile(path);
ShowMessage(jo.AsJSon(True, False));

// 3.从流构建

var
  jo: ISuperObject;
  stm: TStream;
  b: Byte;
begin
  {模拟个测试流; 看看它能接受的编码够原始的, 它存取文件也是如此}
  stm := TStringStream.Create('{"No2":"\u674e\u56db","No1":"\u5f20\u4e09"}');

  jo := TSuperObject.ParseStream(stm);
  ShowMessage(jo.AsJSon(True, False));

  stm.Free;
end;

//数组访问
jo['name'].AsString
//指定返回类型
  s := jo['name'].AsString;
  i := jo['age'].AsInteger;
  b := jo['sex'].AsBoolean;
  d := jo['weight'].AsDouble;

  s := jo.S['name'];
  i := jo.I['age'];
  b := jo.B['sex'];
  d := jo.D['weight'];

  {
  jo['name'] 是 jo.O['name'] 的简化形式, 因为它是类的默认数组;
  jo.N 类似 jo.O, 区别是 jo.N 在参数不妥时可返回空;
  jo.M 和方法有关, 对象中可嵌入方法.
}
// 内嵌对象访问。
  ShowMessage(jo['addresses.address'].AsString);
  ShowMessage(jo['addresses.pc'].AsString);

  //TSuperArray
 var
  jo: ISuperObject;
  ja: TSuperArray;
begin
  jo := SO(Memo1.Text);
  ja := jo['tel'].AsArray;

  ShowMessage(IntToStr(ja.Length));
  ShowMessage(ja[0].AsString);
  ShowMessage(ja[1].AsString);

  ja := jo['children'].AsArray;
  ShowMessage(ja[0]['name'].AsString);
  ShowMessage(ja[1]['name'].AsString);
end;

//遍历对象
procedure TForm1.Button5Click(Sender: TObject);
var
  item,jo: ISuperObject;
begin
  jo := SO(Memo1.Text);
  for item in jo do ShowMessage(item.AsJSon(False, False));
end;

//遍历子对象
procedure TForm1.Button6Click(Sender: TObject);
var
  item,jo: ISuperObject;
begin
  jo := SO(Memo1.Text);
  for item in jo['children'] do
    ShowMessage(item.AsJSon(False, False));
end;

//使用 TSuperAvlEntry 或 TSuperTableString 遍历
procedure TForm1.Button7Click(Sender: TObject);
var
  jo: ISuperObject;
  item: TSuperAvlEntry;
begin
  jo := SO(Memo1.Text);
  for item in jo.AsObject do
    ShowMessageFmt('Name: %s; Value: %s', [item.Name, item.Value.AsString]);
end;

//使用 TSuperObjectIter 遍历
procedure TForm1.Button8Click(Sender: TObject);
var
  jo: ISuperObject;
  item: TSuperObjectIter;
begin
  jo := SO(Memo1.Text);

  if ObjectFindFirst(jo, item) then
  repeat
    ShowMessageFmt('key: %s; val: %s', [item.key, item.val.AsString]);
  until not ObjectFindNext(item);
  ObjectFindClose(item);
end;