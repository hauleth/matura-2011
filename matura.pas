program Matura;

uses Math;

var
  i : Integer;
  tab : array[0..10000] of LongInt;

function sklej(n : Integer) : Int64;
begin
  if n = 1 then
    sklej := 1
  else if n mod 2 = 0 then
    sklej := n - 1 + 2 * sklej(n div 2)
  else
    sklej := n - 1 + sklej((n-1) div 2) + sklej((n+1) div 2);
end;

procedure sklej_fill(var tab : array of LongInt);
var
  i : LongInt;
begin
  tab[0] := 1;
  tab[1] := 1;
  for i := 2 to high(tab) do
  begin
    tab[i] := i - 1 + tab[floor(i/2)] + tab[ceil(i/2)];
  end;
end;

begin

{for i := 1 to 10000 do
  writeln(sklej(i));}
sklej_fill(tab);
for i := 1 to 10000 do
  writeln(tab[i]);

end.

