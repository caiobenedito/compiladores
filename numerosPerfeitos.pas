program numerosPerfeitos;
 
uses crt;
 
var
  ate, x, soma, i: integer;
 
begin
  clrscr;
  x := 0;
  writeln('Numeros perfeitos abaixo de');
  Readln(ate);
  repeat
    x := x + 1;
    soma := 0;
    for i := 1 to x - 1 do
    begin
      if x mod i = 0 then
        soma := soma + i;
    end;
    if soma = x then
    begin
      writeln(x);
    end;
  until (x > ate);
  writeln('Pressione qualquer tecla para finalizar…');
  readkey;
 
end.