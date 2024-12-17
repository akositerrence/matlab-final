function s = simpson_3_3_rule(f, a, b, N)
    X = linspace(a, b, N+1);
    h = (b-a)/N;
    s = (f(a) + f(b) + 4*sum(f(X(2:2:N))) + 2*sum(f(X(3:2:(N-1))))) * h/3;
end