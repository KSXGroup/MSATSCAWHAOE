function res = myinv(A)
[l, u, p] = lu(A);
resl = diag(ones(1, length(A)));
resu = resl;
for i = 1:length(l)
    resl(i, :) = resl(i, :) ./ l(i,i);
    for j = (i + 1):length(l)
        resl(j,:) = resl(j, :) - l(j, i).*resl(i,:);
    end
end
for i = length(u):-1:1
    resu(i,:) = resu(i, :) ./ u(i,i);
    for j = (i - 1):-1:1
        resu(j,:) = resu(j, :) - u(j, i).*resu(i,:);
    end
end
res = resu * resl * p;
end

