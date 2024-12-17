function alt = skydive()
    g = 9.8;
    k = 0.5;
    m = 142.2;
    a = @(v) g - (1/2) * (k*v^2) * (1/m);
    v = 0;
    alt = 10000;
    h = 5;
    for t = 5:5:10
        v_mid = v + ((h/2)*a(v));
        v = v + h * a(v_mid);
        alt = alt - ( v_mid * h );
    end

    fprintf("%.3f\n", alt);

end