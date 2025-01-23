program PalindromeCheck;

function P_Alindrom(S: string): Boolean;
begin
  if Length(S) <= 1 then
    P_Alindrom := True
  else
  begin
    if S[1] <> S[Length(S)] then
      P_Alindrom := False
    else
      P_Alindrom := P_Alindrom(Copy(S, 2, Length(S) - 2));
  end;
end;

var
  S1, S2, S3, S4, S5: string;
begin
  S1 := 'анна';
  S2 := 'як';
  S3 := 'мак';
  S4 := 'ток';
  S5 := 'лол';

  WriteLn('P_Alindrom("', S1, '"): ', P_Alindrom(S1));
  WriteLn('P_Alindrom("', S2, '"): ', P_Alindrom(S2));
  WriteLn('P_Alindrom("', S3, '"): ', P_Alindrom(S3));
  WriteLn('P_Alindrom("', S4, '"): ', P_Alindrom(S4));
  WriteLn('P_Alindrom("', S5, '"): ', P_Alindrom(S5));

  ReadLn;
end.
