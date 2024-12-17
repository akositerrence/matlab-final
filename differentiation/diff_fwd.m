function dfdx = diff_fwd(f, x0)
    h = 1e-4;
    dfdx = f((x0+h) - f(x0)) / h;
end