function root = false_position(f, a, b, n)
    for i=1:n
        c = (a*f(b)-b*f(a))/(f(b)-f(a));
        if f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
    end
    root = (a+b)/2;
end