function x = prepc()
    g=9.8;k=0.5;m=142.2;a=@(v)g-(0.5*k*v.^2)*(1/m);h=5;
    f=@(T)(altitude(T,g,k,m,a,h)-5000);
    df=@(T)(f(T+1e-6)-f(T))/1e-6;
    x=10;
    for i=1:100
    d=-f(x)/df(x);
    x=x+d;
    if abs(d)<1e-12
    break
    end
    end
    end
    
    function alt=altitude(T,g,k,m,a,h)
    v=0;alt=10000;
    for tt=5:5:T
    v_mid=v+(h/2)*a(v);
    v=v+h*a(v_mid);
    alt=alt-(v_mid*h);
    end
    end
    