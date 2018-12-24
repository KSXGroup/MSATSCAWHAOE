function root3(st)
eps = 1e-6;
cnt = 0;
xk1 = 0;
xk = st;
L =  (9*3.74^2 - 3*3.74^3) / exp(3.74);
while(1)
    cnt = cnt + 1;
    xk1 = 3*xk.^3./exp(xk);
    if(abs(xk1 - xk)/(1 - L) <= eps)
        break;
    end
    xk = xk1;
end
fprintf("result is %.7f, iterate %d times\n", xk, cnt);
end