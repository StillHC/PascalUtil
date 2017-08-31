unit Unit4;

interface

uses
  HtmlParser,
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ComCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ExtCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Memo2: TMemo;
    IdHTTP1: TIdHTTP;
    Panel1: TPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    TreeView1: TTreeView;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    Panel3: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FNodes: IHtmlElement;

  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure NodesToTree1(ATreeView: TTreeView; ANode: IHtmlElement;
  AParentNode: TTreeNode; Level: Integer);
var
  i: Integer;
  Node: TTreeNode;
  m: Integer;
begin
  Node := ATreeView.Items.AddChild(AParentNode,
    Format('[%d]%s', [ANode.GetSourceLineNum, ANode.TagName]));
  Node.Data := Pointer(ANode);
  m := ANode.ChildrenCount - 1;
  // if m > 1000 then
  // m := 1000;

  // OutputDebugString(PChar(Format('LineNum--->:%d;Level:%d;TagName:%s;Text:%s',[ANode.GetSourceLineNum,Level, ANode.TagName, ANode.GetOrignal])));
  for i := 0 to m do
  begin
    Inc(Level);
    NodesToTree1(ATreeView, ANode[i], Node, Level);
  end;
end;

function cb(AParam: Pointer; AElement: IHtmlElement): Boolean; stdcall;
var
  s: string;
begin
  s := AElement.TagName;
  Result := True;
end;

procedure TForm4.Button1Click(Sender: TObject);

begin
  FNodes := parserHtml(Memo1.Text);
  TreeView1.Items.BeginUpdate;
  TreeView1.Items.Clear;
  NodesToTree1(TreeView1, FNodes, nil, 0);
  TreeView1.Items.EndUpdate;
  Caption := 'OK';
  //
  GroupBox2.Enabled := True;
  ListBox1.Items.Clear;
end;

function EnumAttr(AParam: Pointer; const AttributeName, AttributeValue
  : WideString): Boolean; stdcall;
begin
  TStringList(AParam).Add(AttributeName);
  Result := True;
end;

procedure TForm4.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
  e: IHtmlElement;
  attrs: TStrings;
  i: Integer;
begin
  attrs := TStringList.Create;
  if (Node <> nil) and (Node.Data <> nil) then
  begin
    Pointer(e) := Node.Data;
    try
      Memo2.Lines.BeginUpdate;
      Memo2.Lines.Clear;
      // {
      Memo2.Lines.Add(Format('ÐÐºÅ:%d,%d', [e.GetSourceLineNum,
        e.GetSourceColNum]));
      Memo2.Lines.Add('==================Orignal===========================');
      Memo2.Lines.Add(e.Orignal);
      Memo2.Lines.Add('==================Content===========================');
      Memo2.Lines.Add(e.Content);
      Memo2.Lines.Add
        ('==================Attributes===========================');
      e.EnumAttributeNames(attrs, EnumAttr);
      for i := 0 to attrs.Count - 1 do
      begin
        Memo2.Lines.Add(Format('%s  = "%s"',
          [attrs[i], e.Attributes[attrs[i]]]));
      end;
      Memo2.Lines.Add('==================InnerHTML===========================');

      Memo2.Lines.Add(e.InnerHtml);
      // }
      // Memo2.Text := e.InnerText;
      Memo2.Lines.EndUpdate;
    finally
      Pointer(e) := nil;
    end;

  end;
  attrs.Free;
end;

procedure TForm4.Button2Click(Sender: TObject);
var
  s, url: string;
begin
  url := Edit1.Text;
  if LowerCase(copy(url, 1, length('http://'))) <> 'http://' then
    url := 'http://' + url;
  // Memo1.Lines.text := UTF8Decode(IdHTTP1.Get(url));
  s := IdHTTP1.Get(url);
{$IFDEF UNICODE}
  Memo1.Lines.Text := s;
{$ELSE}
  Memo1.Lines.Text := UTF8Decode(IdHTTP1.Get(url));
{$ENDIF}
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin

    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TForm4.Button4Click(Sender: TObject);
var
  s : string;
  l: IHtmlElementList;
  i: Integer;
begin
  if FNodes <> nil then
  begin
    try
      s := Edit2.Text;
      l := FNodes.SimpleCSSSelector(s);
    except
      l := nil;
    end;
    if l <> nil then
    begin
      ListBox1.Items.BeginUpdate;
      try
        ListBox1.Items.Clear;
        for i := 0 to l.Count - 1 do
        begin
          ListBox1.Items.Add(l[i].Orignal);
        end;
      finally
        ListBox1.Items.EndUpdate;
      end;
    end;
  end;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FNodes := nil;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  GroupBox2.Enabled := False;
end;

initialization

{$IF Declared(ReportMemoryLeaksOnShutdown)}
  ReportMemoryLeaksOnShutdown := True;
{$IFEND}

finalization

end.
