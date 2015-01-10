type arr=array[0..1000]of integer;
     int=integer;
var n,i:int;
    a:arr;
procedure sdvig(var a:arr);
var i:int;
begin
for i:=a[0] downto 1 do
 a[i+1]:=a[i];
a[1]:=0;
inc(a[0]);
end;
//procedure srav(var a,b:arr);
 
function sloz(var a,b:arr;var buf:int):arr;
var i,j:int;
begin
//srav(a,b);
sloz[0]:=a[0];
for i:=a[0] downto 1 do
 begin
  buf:=a[i]+b[i]+buf;
  sloz[i]:=buf mod 10;
  buf:=buf div 10;
 
 end;
 
end;
procedure slon(var a,b,c:arr);
var x:int;
begin
  x:=0;
  c:=sloz(a,b,x);//c:=a+b
  if x>0 then
  begin
   sdvig(c);
   a[1]:=1;
  end;
end;
 
begin
assign(input,'input.txt');reset(input);
assign(output,'output.txt');rewrite(output);
 
read(n);
a[1]:=1;a[0]:=1;
for i:=1 to n do
 begin
  slon(a,a,a);
 end;
for i:=1 to a[0] do
 write(a[i]);
 
close(input);close(output);
end.
