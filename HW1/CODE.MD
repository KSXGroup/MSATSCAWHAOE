function A = calc(p, q);
[x, y] = meshgrid(p, q);
A = (x.^2).*sin(y)+(y.^2).*cos(x);
surf(x,y,A), shading interp; colorbar

![HW1](D:\Personal Data\SJTU\Scientific Computing\HW1\HW1.jpg)