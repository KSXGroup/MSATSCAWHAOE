function res = Newton()
eps = 1e-8;
xk = 1;
cnt = 0;
xk1 = 0;
while(1)
   xk1 = xk - (xk.^4 - 4.*xk.^2 + 4)/(4.*xk.^3 - 8.*xk);
   if(abs(xk - xk1)< eps) 
      break;
   end
   cnt = cnt +1;
   fprintf("result is %.9f after %d iteration.\n", xk1, cnt);
   xk = xk1;
end
fprintf("iterate %d times, result is %.9f\n",cnt, xk1);
res = xk;
end

