program DistanceCalculation;

type
  TPoint = record
    X, Y: Real;
  end;

function Leng(A, B: TPoint): Real;
begin
  Leng := Sqrt(Sqr(A.X - B.X) + Sqr(A.Y - B.Y));
end;

var
  A, B, C, D: TPoint;
  AB, AC, AD: Real;

begin
  A.X := 1;  A.Y := 1;
  B.X := 4;  B.Y := 6;
  C.X := 7;  C.Y := 1;
  D.X := 3;  D.Y := 5;

  AB := Leng(A, B);
  AC := Leng(A, C);
  AD := Leng(A, D);

  Writeln('длина AB: ', AB:0:2);
  Writeln('длина AC: ', AC:0:2);
  Writeln('длина AD: ', AD:0:2);
end.