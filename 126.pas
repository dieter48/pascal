var a:array[1..100,1..100]of integer;
    n,i,j,l,x,k:integer;
begin
assign(input,'input.txt');reset(input);
assign(output,'output.txt');rewrite(output);
read(n);
for i:=1 to n do
 for j:=1 to n do
  read(a[i,j]);
 x:=3000;
for i:=1 to n-1 do
 for j:=i+1 to n-1 do
  for l:=j+1 to n do
   begin
    k:=a[i,j]+a[j,l]+a[l,i];
    if x>k then x:=k;
   end;
write(x);
 
end.
