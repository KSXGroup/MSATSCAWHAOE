function root2(st)
eps = 1e-6;
cnt = 0;
xk1 = 0;
xk = st;
L =  exp(0.91).*(0.91 - 1) / (3*0.91.^2);
while(1)
    cnt = cnt + 1;
    xk1 = exp(xk)./(3.*xk);
    if(abs(xk1 - xk)/(1 - L) <= eps)
        break;
    end
    xk = xk1;
end
fprintf("result is %.7f, iterate %d times\n", xk, cnt);
end