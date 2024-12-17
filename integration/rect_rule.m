function area = rect_rule(f, a ,b, n)
    X = linspace(a, b, N+1);
    h = (b-a)/n;
    area = sum(f(X(1:end-1))) * h;
end