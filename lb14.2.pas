program aa;

function IntToStr(value: Integer): string;
var
  s: string;
begin
  Str(value, s); 
  IntToStr := s;
end;

procedure GeneratePaths(fileName: string; depth, k: Integer);
var
  f: Text;

  procedure DFS(currentPath: string; currentDepth: Integer);
  var
    i: Integer;
    newPath: string;
  begin
    if currentDepth = depth then
    begin
      WriteLn(f, currentPath);  
      Exit;
    end;

    for i := 1 to k do
    begin
      if currentPath = '' then
        newPath := '0 ' + IntToStr(i)  
      else
        newPath := currentPath + ' ' + IntToStr(i);

      DFS(newPath, currentDepth + 1);
    end;
  end;

begin
  Assign(f, fileName);  
  Rewrite(f);           
  DFS('', 0);           
  Close(f);            
end;

var
  fileName: string;
  depth, k: Integer;

begin
  fileName := '123.txt';
  depth := 3;  
  k := 2;      

  GeneratePaths(fileName, depth, k);  
end.
