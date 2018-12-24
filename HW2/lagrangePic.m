function ret = lagrangePic()
xo = [-5:0.01:5];
x3 = [-5:10/3:5];
x6 = [-5:10/6:5];
x9 = [-5:10/9:5];
x10 = [-5:10/10:5];
yo = 1./(1 + xo.^2);
y3 = 1./(1 + x3.^2);
y6 = 1./(1 + x6.^2);
y9 = 1./(1 + x9.^2);
y10 =1./(1 + x10.^2);
plot(xo, yo, 'DisplayName', 'ԭʼͼ��');
hold on;
plot(xo, lagrange(x3, y3, xo), 'DisplayName', '���β�ֵ');
plot(xo, lagrange(x6, y6, xo), 'DisplayName', '���β�ֵ');
plot(xo, lagrange(x9, y9, xo), 'DisplayName', '�Ŵβ�ֵ');
plot(xo, lagrange(x10, y10, xo), 'DisplayName', 'ʮ�β�ֵ');
hold off;