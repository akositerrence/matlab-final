function answer = prepb(f, x0)
    for i = 1:length(x0)
        val(:, i) = pdiff(f, x0, i);
    end
    answer = val;
end

function val = pdiff(f, x0, i)
    h = 1e-4;
    xa = x0;
    xa(i) = xa(i) + h;
    val = ( f(xa) - f (x0) ) / h;
end