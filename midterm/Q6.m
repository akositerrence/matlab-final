% Inputs
%   F: forward kinematics.
%      Given joint angles q, it calculates the EE location.
%   cur_q: current joint angles. (6x1 matrix)
%   p_des: desired EE location. (3x1 matrix)

% Output
%   q: calculated joint angles to move the EE to the desired location.

function q = Q6(FK, cur_q, p_des)
    q = cur_q;
    G = @(q) FK(q) - p_des;
    for i = 1:10
        J = jac(G, q);
        c = 0.01;
        if cond(J) > 10
            c = min(1, 0.0025 * cond(J));
        end
        J = J + c * eye(size(J));
        dq = J \ -G(q);
        q = q + 0.1 * dq;
    end
end

function J = jac(G, q)
    m = length(q);
    for k = 1:m
        J(:,k) = pdiff(G, q, k);
    end
end

function dq = pdiff(G, q, i)
    h = (10^-4);
    qh = q;
    qh(i) = q(i) + h;
    dq = (G(qh) - G(q)) / h;
end