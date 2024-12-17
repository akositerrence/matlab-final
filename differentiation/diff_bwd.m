function dfdx = diff_fwd(f, x0)
    h = 1e-4;
    dfdx = f((x0) - f(x0-h)) / h;
end