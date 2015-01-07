var a:array of array of integer;
    n,i,j,m,f:integer;
function f1(x,y:integer):integer;
var k,m,s:longint;
begin
s:=901800900;m:=-201;
if x=1 then s:=s div 385;
if x=n then s:=s div 66;
if y=1 then s:=s div 273;
if y=n then s:=s div 130;
if s mod 4=0 then
 begin
  k:=a[i,j+1]+a[i+1,j];
  if k>m then m:=k;
 end;
 
if s mod 9=0 then
 begin
  k:=a[i,j-1]+a[i+1,j];
  if k>m then m:=k;
 end;
 
if s mod 25=0 then
 begin
  k:=a[i,j+1]+a[i-1,j];
  if k>m then m:=k;
 end;
 
if s mod 49=0 then
 begin
  k:=a[i,j-1]+a[i-1,j];
  if k>m then m:=k;
 end;
 
if s mod 121=0 then
 begin
  k:=a[i+1,j]+a[i-1,j];
  if k>m then m:=k;
 end;
 
if s mod 169=0 then
 begin
  k:=a[i,j+1]+a[i,j-1];
  if k>m then m:=k;
 end;
f1:=a[i,j]+m;
 
end;
begin
assign(input,'input.txt');reset(input);
assign(output,'output.txt');rewrite(output);
read(n);
setlength(a,n+1,n+1);
for i:=1 to n do
 begin
  for j:=1 to n do
   read(a[i,j]);
  readln;
 end;
m:=-301;
for i:=1 to n do
 for j:=1 to n do
  begin
   f:=f1(i,j);
   if f>m then m:=f;
  end;
write(m);
close(input);close(output);
end.var a:array of array of integer;
    n,i,j,m,f:integer;
function f1(x,y:integer):integer;
var k,m,s:longint;
begin
s:=901800900;m:=-201;
if x=1 then s:=s div 385;
if x=n then s:=s div 66;
if y=1 then s:=s div 273;
if y=n then s:=s div 130;
if s mod 4=0 then
 begin
  k:=a[i,j+1]+a[i+1,j];
  if k>m then m:=k;
 end;
 
if s mod 9=0 then
 begin
  k:=a[i,j-1]+a[i+1,j];
  if k>m then m:=k;
 end;
 
if s mod 25=0 then
 begin
  k:=a[i,j+1]+a[i-1,j];
  if k>m then m:=k;
 end;
 
if s mod 49=0 then
 begin
  k:=a[i,j-1]+a[i-1,j];
  if k>m then m:=k;
 end;
 
if s mod 121=0 then
 begin
  k:=a[i+1,j]+a[i-1,j];
  if k>m then m:=k;
 end;
 
if s mod 169=0 then
 begin
  k:=a[i,j+1]+a[i,j-1];
  if k>m then m:=k;
 end;
f1:=a[i,j]+m;
 
end;
begin
assign(input,'input.txt');reset(input);
assign(output,'output.txt');rewrite(output);
read(n);
setlength(a,n+1,n+1);
for i:=1 to n do
 begin
  for j:=1 to n do
   read(a[i,j]);
  readln;
 end;
m:=-301;
for i:=1 to n do
 for j:=1 to n do
  begin
   f:=f1(i,j);
   if f>m then m:=f;
  end;
write(m);
close(input);close(output);

end.
