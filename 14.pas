program aa;

//параметризация 
function GCD(a, b: Integer): Integer;
begin
  // базовый случай
  if b = 0 then
    GCD := a
  else
    // декомпозиция
    GCD := GCD(b, a mod b);
end;

var
  a, b, result: Integer;

begin
  a := 3430;
  b := 1365;
  
  result := GCD(a, b);
  
  WriteLn('НОД чисел ', a, ' и ', b, ' равен ', result);
end.
