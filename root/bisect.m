function root = bisect(f, a, b, n)
    fa = f(a);
    for i = 1:n
        c = (a+b)/n;
        fc = f(c);
        if fa*fc < 0
            b = c;
        else
            a = c;
            fa = fc;
        end
    end
    root = (a+b)/2;
end