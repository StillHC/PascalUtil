program Project8;

uses
  System.SysUtils,
  System.StartUpCopy,
  FMX.Types,
  FMX.Forms,
  HtmlParser_XE3UP in '..\HtmlParser_XE3UP.pas',
  Unit7 in 'Unit7.pas' {Form7}
  ;

{$R *.res}

begin

  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
