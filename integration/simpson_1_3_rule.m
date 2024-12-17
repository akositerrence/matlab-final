function area = simpson_1_3_rule(f, a, b, N)
    X = linspace(a, b, N+1);
    h = (b-a)/N;
    area = (f(a) + f(b) + 4*sum(f(X(2:2:N))) + 2*sum(f(X(3:2:(N-1))))) * h/3;
end