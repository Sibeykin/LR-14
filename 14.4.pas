program aa;

function sumTo(n: Integer): Integer;
begin
  // базовый случай
  if n = 1 then
    sumTo := 1
  else
  // декомпозиция
    sumTo := n + sumTo(n - 1);
end;

var
  n, result: Integer;

begin
  Write('Введите число n: ');
  ReadLn(n);
  
  // параметризация
  result := sumTo(n);
  
  WriteLn('Сумма чисел от 1 до ', n, ' равна: ', result);
end.
