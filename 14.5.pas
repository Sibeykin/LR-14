program aa;

var 
  x, y: integer;
 //параметризаци

function stepен(a, b: integer): integer;
begin
  // базовый случай
  if b = 0 then
    stepен := 1
  else
    // декомпозиция:
    stepен := a * stepен(a, b - 1);
end;

begin
  writeln('число:');
  readln(x);
  writeln('степень:');
  readln(y);
  writeln('результат: ', stepен(x, y));
end.