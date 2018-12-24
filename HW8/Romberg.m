function arr = Romberg()
arr = zeros(6, 6);
for i = 1:6
    pos = 0:1/(2.^(i-1)):1;
    res = zeros(1, length(pos) - 1);
    for j = 1:length(pos) - 1
        res(j) = ((pos(j+1) - pos(j)) / 2 ).* (4/(1+pos(j).^2 ) + 4/(1 + pos(j+1).^2));
    end
    arr(i, 1) = sum(res);
end
for i=1:6
    for k = 2:i
        arr(i, k) = (4.^(k-1)).*arr(i, k - 1)/(4.^(k - 1) - 1) - arr(i - 1, k - 1)/(4.^(k - 1)  - 1);
    end
end

