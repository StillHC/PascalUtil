
{Get GUID Code }
Function Guid_Gen:ansistring;
Var
    s:string;
    i:longint;
Begin
    s:='0123456789abcdef';
    //8-4-4-4-12
    Guid_Gen:='xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx';
    for i:=1 to length(Guid_Gen) do begin
        if Guid_Gen[i]='x' then Guid_Gen[i]:=s[Random(16)+1];
    end;
End;