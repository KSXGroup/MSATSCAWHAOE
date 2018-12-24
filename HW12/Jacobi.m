function res = Jacobi(n)
L =-(diag(ones(1, n - 2), -2) + diag(-8 .* ones(1, n - 1), -1));
U = L';
D = diag(ones(1, n).* 20);
x = ones(1, n)';
x1 = x;
eps = 1e-8;
cnt = 0;
b = zeros(1,n)';
q = norm( D\(L + U), inf);
while (1)
   x1 =  D\((L + U) * x +  b);
   cnt = cnt + 1;
   q1 = norm(x1 - x, inf);
   if(abs(q/ (1-q) * q1) < eps) 
       break;
   end
   x = x1;
end
res = x;
fprintf("iteration times: %d\n",cnt);
end

