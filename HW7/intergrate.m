function res = intergrate(x)
p =  length(x);
res1 = ones(1, p - 1);
res2 = res1;
res3 = res1;
for i = 1:p - 1
    res3(i) = (x(i +1) - x(i))/2 * (exp(1).^(-(x(i + 1) - x(i))/(2*3.^(0.5)) - (x(i+1) + x(i))/ 2) + exp(1).^((x(i+1) -x(i))/ (2*3.^0.5) - (x(i+1) +x(i))/ 2));
end
for i = 1:p - 1
    res1(i) = (x(i+1) - x(i))/2 * (exp(-x(i)) + exp(-x(i+1)));
end
for i = 1:p - 1
    res2(i) = (x(i+1) - x(i))/6 * (exp(-x(i)) + 4*exp(-(x(i) +x(i+1))/2) + exp(-x(i+1)));
end
res = [sum(res1), sum(res2), sum(res3)];

