function A = calc(p, q);
[x, y] = meshgrid(p, q);
A = (x'.^2).*sin(y')+(y'.^2).*cos(x');
surf(x',y',A), shading interp; colorbar
