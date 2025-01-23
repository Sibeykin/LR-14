program aa;

type
  TDate = record
    Day: Integer;
    Month: Integer;
    Year: Integer;
  end;

function LeaP_Year(D: TDate): Boolean;
begin
  if (D.Year mod 4 = 0) then
    if (D.Year mod 100 = 0) then
      if (D.Year mod 400 = 0) then
        LeaP_Year := True
      else
        LeaP_Year := False
    else
      LeaP_Year := True
  else
    LeaP_Year := False
end;

var
  Dates: array[1..5] of TDate;
  i: Integer;
begin
  Dates[1].Day := 1; Dates[1].Month := 1; Dates[1].Year := 2021;
  Dates[2].Day := 1; Dates[2].Month := 1; Dates[2].Year := 1900;
  Dates[3].Day := 1; Dates[3].Month := 1; Dates[3].Year := 2000;
  Dates[4].Day := 1; Dates[4].Month := 1; Dates[4].Year := 2024;
  Dates[5].Day := 1; Dates[5].Month := 1; Dates[5].Year := 2100;

  for i := 1 to 5 do
    if LeaP_Year(Dates[i]) then
      WriteLn('год ', Dates[i].Year, ' - високосный')
    else
      WriteLn('год ', Dates[i].Year, ' - не високосный');
end.
