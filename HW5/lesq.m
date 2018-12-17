function res = lesq(x, y)
    a0 = length(x);
    tmp = x.^2;
    a1 = sum(tmp);
    tmp1 = (x.^2).*y;
    tmp = x.^4;
    a3 = sum(tmp);
    a4 = sum(tmp1);
    a5 = sum(y);
    lhs = [a0, a1;a1, a3];
    rhs = [a5, a4]';
    res = inv(lhs) * rhs;
    error = sum((res(1) + res(2).*(x.^2) - y).^2);
    res(3) = error;
end

