function analyze()
x  = -100:0.01:100;
res = 3*x.^2 - exp(x);
for i = 1:length(res) - 1
    if res(i) * res(i+1) < 0
        fprintf("[%.2f, %.2f]\n",x(i), x(i + 1));
    end
end
end

