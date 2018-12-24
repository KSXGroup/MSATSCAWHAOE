function yres = chebyshev(n, xres)
k = [0:1:n-1];
xc = cos(pi/(2*n)+k.*pi/n);
yc = 1./(1+(5*xc).^2);
res = 0;
for i = 1 :n
    z = ones(1, length(xres));
    for j = 1:n
        if j ~= i
            z = z.*(xres - xc(j))./(xc(i) - xc(j));
        end
    end
    res = res + z.*yc(i);
end
yres = res;
plot(xres, yres);
end

