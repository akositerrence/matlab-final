function answer = curveb(X, Z)
    A = [X.^2, X, ones(size(X))];
    mat = A \ Z;
    answer = mat(1);
end