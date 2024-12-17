function area = trap_rule(f, a , b ,n)
    X = linspace(a, b, n+1);
    h = (b-a)/n;
    area = (h/2) * ( f(a) + f(b) + 2 * sum(f(X(2:end-1))) );
end