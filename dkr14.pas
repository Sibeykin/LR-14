program aa;

function MaxInt(A: array of Integer; N: Integer): Integer;
begin
  if N = 2 then
    MaxInt := A[1]
  else
  begin
    
    if A[N-1] > MaxInt(A, N-1) then
      MaxInt := A[N-1]
    else
      MaxInt := MaxInt(A, N-1);
  end;
end;

var
  A, B, C: array of Integer;
  NA, NB, NC: Integer;
begin
  SetLength(A, 5);  
  SetLength(B, 4);  
  SetLength(C, 3);  
  A[0] := 3; A[1] := 3; A[2] := 7; A[3] := 1; A[4] := 5;
  B[0] := 4; B[1] := 6; B[2] := 8; B[3] := 2;
  C[0] := 10; C[1] := 21; C[2] := 15;
  NA := Length(A);
  NB := Length(B);
  NC := Length(C);
  WriteLn('Max A ', MaxInt(A, NA));
  WriteLn('Max B ', MaxInt(B, NB));
  WriteLn('Max C ', MaxInt(C, NC));

  ReadLn;
end.
