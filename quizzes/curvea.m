function answer = curvea(X, Y, Z)
    A = [X, Y, ones(size(X))];
    mat = A \ Z;
    answer = mat(1);
end