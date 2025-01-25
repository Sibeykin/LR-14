program aa;

procedure LoopFor(i, n: integer);
begin
  // базовый случай
  if i > n then
    Exit;

  WriteLn('Привет, ', i);

  // декомпозиция
  LoopFor(i + 1, n);
end;

begin
  // параметризация
  LoopFor(1, 2);
end.
