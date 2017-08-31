unit JStrUtils;

interface

uses
  Windows;
  
function WideStringToAnsiString(const strWide: WideString; CodePage: Word): AnsiString;
function AnsiStringToWideString(const strAnsi: AnsiString; CodePage: Word): WideString;


implementation

/// Wide String -> Ansi String
function WideStringToAnsiString(const strWide: WideString; CodePage: Word): AnsiString;
var
  Len: integer;
begin
  Result := '';
  if strWide = '' then Exit;
 
  Len := WideCharToMultiByte(CodePage,
    WC_COMPOSITECHECK or WC_DISCARDNS or WC_SEPCHARS or WC_DEFAULTCHAR,
    @strWide[1], -1, nil, 0, nil, nil);
  SetLength(Result, Len - 1);

  if Len > 1 then
    WideCharToMultiByte(CodePage,
      WC_COMPOSITECHECK or WC_DISCARDNS or WC_SEPCHARS or WC_DEFAULTCHAR,
      @strWide[1], -1, @Result[1], Len - 1, nil, nil);
end;
 
/// Ansi String -> Wide String
function AnsiStringToWideString(const strAnsi: AnsiString; CodePage: Word): WideString;
var
  Len: integer;
begin
  Result := '';
  if strAnsi = '' then Exit;
 
  Len := MultiByteToWideChar(CodePage, MB_PRECOMPOSED, PChar(@strAnsi[1]), -1, nil, 0);
  SetLength(Result, Len - 1);
 
  if Len > 1 then
    MultiByteToWideChar(CodePage, MB_PRECOMPOSED, PChar(@strAnsi[1]), -1, PWideChar(@Result[1]), Len - 1);
end;

end.
 