function res = Setffensen()
    eps = 1e-8;
    xk = 1;
    yk = 0;
    zk = 0;
    xk1 = 0;
    cnt = 0;
    while(1)
        yk = xk - (xk.^4 - 4.*xk.^2 + 4)/(4.*xk.^3 - 8.*xk);
        zk = yk - (yk.^4 - 4.*yk.^2 + 4)/(4.*yk.^3 - 8.*yk);
        xk1 = xk - (yk - xk).^2/(zk -2.*yk+xk);
        if(abs(xk1 - xk) < eps )
            break;
        end
        cnt = cnt + 1;
        fprintf("result is %.9f after %d iteration.\n", xk1, cnt);
        xk = xk1;
    end
    fprintf("iterate %d times, result is %.9f\n",cnt, xk1);
    res = xk1;
end

