function x = secant(f, x0, x1, n)
    for i = 1:n
        s = (f(x1) - f(x0)) / (x1 - x0);
        dx = -f(x1) / s;
        x2 = x1 + dx;
        x0 = x1;
        x1 = x2;
    end
    x = x2;
end