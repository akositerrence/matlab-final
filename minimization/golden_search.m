function [xmin, fmin] = golden_search(f, a, b, n)
    phi = (1 + sqrt(5)) / 2;
    resphi = 2 - phi;
    x1 = b - resphi * (b - a);
    x2 = a + resphi * (b - a);
    f1 = f(x1);
    f2 = f(x2);
    for i = 1:n
        if f1 < f2
            b = x2;
            x2 = x1;
            f2 = f1;
            x1 = b - resphi * (b - a);
            f1 = f(x1);
        else
            a = x1;
            x1 = x2;
            f1 = f2;
            x2 = a + resphi * (b - a);
            f2 = f(x2);
        end
    end
    xmin = (a + b) / 2;
    fmin = f(xmin);
end



















































