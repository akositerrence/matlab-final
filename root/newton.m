function x = newton(f, x0, n)
    x = x0;
    for i = 1:n
        dx = diff(f,x) \ (-f(x));
        x = x + dx;
    end
end