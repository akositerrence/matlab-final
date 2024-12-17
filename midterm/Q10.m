% Inputs
%   F: forward kinematics.
%      Given joint angles q, it calculates the EE location.
%   cur_q: current joint angles. (6x1 matrix)
%   p_des: desired EE location. (3x1 matrix)

% Output
%   q: calculated joint angles to move the EE to the desired location.

function q = Q10(FK, cur_q, p_des)
    g = @(q) sum((FK(q) - p_des).^2);
    q0 = cur_q;
    for i = 1:3
        dq = -grad(g, q0);
        q0 = q0 + dq;
    end
    q = q0;
end

function G = grad(g, q0)
    grad_g = zeros(size(q0));
    for i = 1:length(q0)
        grad_g(i) = pdiff(g, q0, i);
    end
    G = grad_g;
end

function dgdq = pdiff(g, q0, i)
    h = 1e-4;
    qh = q0;
    qh(i) = qh(i) + h; 
    dgdq = (g(qh) - g(q0)) / h; 
end
