function answer = ode(x0, y0)
    [x,y] = ode45(@f, x0, y0);
    answer = [x,y];
end

function func = f(x,y)
    func = [y(2); sin(4.5*x) - 6.2*y(2)];
end
