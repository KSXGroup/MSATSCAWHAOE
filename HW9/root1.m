function root1(st)
eps = 1e-6;
cnt = 0;
xk1 = 0;
xk = st;
L =  (6*(-0.45)-exp(-0.45)+ 2)/2;
while(1)
    cnt = cnt + 1;
    xk1 = (3 * xk.^2 - exp(xk) +2*xk)/2;
    if(abs(xk1 - xk)/(1 - L) <= eps)
        break;
    end
    xk = xk1;
end
fprintf("result is %.7f, iterate %d times\n", xk, cnt);
end

