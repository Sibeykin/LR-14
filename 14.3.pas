program aa;
// параметризация 
procedure PrintRecursive(num: Integer);
begin
  if num >= 0 then // базовый случай 
  begin
    Write(num, ' '); // декомпозиция
    PrintRecursive(num - 2); 
  end;
end;

begin
  PrintRecursive(25); 
end.
