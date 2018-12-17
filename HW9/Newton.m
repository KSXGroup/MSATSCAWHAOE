function Newton(st)
eps = 1e-6;
cnt = 0;
xk1 = 0;
xk = st;
while(1)
    cnt = cnt + 1;
    xk1 = xk - (3*xk.^2 - exp(xk))./(6.*xk - exp(xk));
    if(abs((xk1 - xk)/(xk)) < eps)
        break;
    end
    xk = xk1;
end
fprintf("result is %.7f, iterate %d times\n", xk, cnt);
end