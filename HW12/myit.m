function res = myit(a)
x = [0,0]';
A = [3, 1; 2, 2];
b = [3, 1.5]';
for i = 1:35
    x = x + a * (A * x - b);
end
res = x;
end
