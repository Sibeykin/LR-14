program aa;
// параметризация 
procedure fib(i, n, count: integer);
begin

  Write(n, ' ');

// база данных
  if count > 1 then
// декомпозиция 
    fib(n, i + n, count - 1);
end;

begin 
  fib(0, 1, 10);
end.
