unit Unit7;

interface

uses
  HtmlParser_XE3UP, System.DateUtils,
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, FMX.Platform,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  FMX.StdCtrls, FMX.Edit, FMX.Layouts, FMX.TreeView, FMX.Memo;

type
  TForm7 = class(TForm)
    IdHTTP1: TIdHTTP;
    TreeView1: TTreeView;
    Layout1: TLayout;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    btn1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    FNodes: IHtmlElement;
    FSource: string;
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.fmx}

procedure NodesToTree1(ATreeView: TTreeView; ANode: IHtmlElement;
  AParentNode: TFmxObject);
var
  i: Integer;
  Node: TTreeViewItem;
  m: Integer;
begin

  Node := TTreeViewItem.Create(AParentNode);
  Node.Parent := AParentNode;
  Node.Text := Format('[%d]%s', [ANode.GetSourceLineNum, ANode.TagName]);
  Node.Tag := Nativeint(ANode);
  m := ANode.ChildrenCount - 1;
  // if m > 1000 then
  // m := 1000;

  // OutputDebugString(PChar(Format('LineNum--->:%d;Level:%d;TagName:%s;Text:%s',[ANode.GetSourceLineNum,Level, ANode.TagName, ANode.GetOrignal])));
  for i := 0 to m do
  begin
    NodesToTree1(ATreeView, ANode[i], Node);
  end;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  ShowMessage(Format('按条件找到%d个元素',[FNodes.SimpleCSSSelector('div[id="ftCon"] a#seth').Count]));
end;

procedure TForm7.Button1Click(Sender: TObject);
var
  t1, t2 : TDateTime;
begin

  IdHTTP1.Request.UserAgent :=
    'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0';
  FSource := StrPas(PChar(IdHTTP1.Get(Edit1.Text)));
  Memo1.Lines.Text := FSource;
  ShowMessage('下载网页完毕!');
  t1 := Now;
  FNodes := ParserHTML(FSource);
  t2 := Now;

  ShowMessage(Format('解析网页完毕[%d]毫秒!后面解析到Tree有点慢啊.',[MilliSecondsBetween(t1,t2)]));
  //

  TreeView1.BeginUpdate;
  TreeView1.Clear;
  NodesToTree1(TreeView1, FNodes, TreeView1);
  TreeView1.EndUpdate;
end;


end.
