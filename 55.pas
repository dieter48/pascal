uses math;
var x1,y1,x2,y2,s,r:longint;
z,k,a:real;
begin
assign(input,'input.txt');reset(input);
assign(output,'output.txt');rewrite(output);
read(x1,y1,x2,y2,r,s);
z:=sqrt(sqr(y2-y1)+sqr(x2-x1))/2;
k:=2*pi*r*r;
if r-z>0 then
 begin
  a:=2*arccos(z/r);
  k:=k-sqr(r)*(a-sin(a));
 end;
if k>s then write('YES')
 else write('NO');
close(input);close(output);
end.
