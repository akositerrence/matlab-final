function area = simpson_3_8_rule(f, a, b, n)
    X = linspace(a, b, n+1);
    h = (b-a)/n;
    fx = f(X);
    area = (3*h/8) * (fx(1) + (3*sum(fx(2:3:n-1))) + (3*sum(fx(3:3:n))) + (2*sum(fx(4:3:n-2)) + fx(end)));
end