function ret=lagrange(x,y,xi)
m=length(x);
n=length(y);
res = length(xi);
if m ~= n , error('len(x) != len(y)'); end;
s=0;
for i=1 : n
    z=ones(1,res);
    for j=1 : n
        if j ~= i
        z=z.*(xi-x(j))./(x(i)-x(j));
        end
    end
    s=s+z.*y(i);
end
ret=s;