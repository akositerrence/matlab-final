function root = trisect(f, a, b, n)
    fa = f(a);
    for i = 1:n
        x1 = a + (b - a) / 3;
        x2 = a + 2 * (b - a) / 3;
        fx1 = f(x1);
        fx2 = f(x2);
        if fa * fx1 < 0
            b = x1;
        elseif fx1 * fx2 < 0
            a = x1;
            b = x2;
            fa = fx1;
        else
            a = x2;
            fa = fx2;
        end
    end
    root = (a + b) / 2;
end