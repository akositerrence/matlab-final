function answer = prepa(X, Y, Z)
    A = [X,Y,ones(size(X))];
    theta = zeros(3,1);
    for i=1:10
    r = Z - A*theta;
    delta = (A'*A)\(A'*r);
    theta = theta+delta;
    if norm(delta)<1e-12
    break
    end
    end
    answer = theta(1);
    end