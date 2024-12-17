function J = jacobian(F, x0)
    for i = 1:length(x0)
        J(:,i) = pdiff(F, x0, i)
    end
end

function dFdx = pdiff(F, x, i)
    h = 1e-4;
    xh = x;
    xh(i) = x(i) + h;
    dFdx = (F(xh) - F(x))/h;
end