%x,y为已知插值节点的信息，p为需要求解的点
function res = newton1(x, y, p)
lenx = length(x);
leny = length(y);
if lenx ~= leny , error('len(x) != len(y)'); end;
c = zeros(lenx, lenx);
c(:,1) = y';
for i = 2:lenx
	for j = i: lenx
		c(j, i) = (c(j, i - 1) - c(j - 1, i - 1))./(x(j) - x(j - i + 1));
	end
end
res = 0;
for k = 1 :lenx
    tmp = 1;
    for u = 1:k-1
        tmp = tmp .* (p - x(u));
    end
    res = res + tmp.* c(k, k);
end
        