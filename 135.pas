const nn=100;
var n:integer;a:array[1..nn,1..nn]of integer;
 j,i,k:integer;
 
function min(a,b:integer):integer;
begin
 if a>b then min:=b else min:=a;
end;
 
begin
 assign(input,'input.txt');reset(input);
 assign(output,'output.txt');rewrite(output);
 readln(n);
  for i:=1 to n do
   begin
    for j:=1 to n do read(a[i,j]);
    readln;
   end;
 for k:=1 to n do
  for i:=1 to n do
   for j:=1 to n do
    begin
     a[i,j]:=min(a[i,j],a[i,k]+a[k,j]);
    end;
 
  for i:=1 to n do
   begin
    for j:=1 to n do write(a[i,j],' ');
    writeln;
   end;
 close(input);close(output);
end.
