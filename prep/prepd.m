function answer = prepd(x0,y0)
    f = @(x,y)[y(2);sin(4.5*x)-6.2*y(2)];
    g = @(p)final_val(x0,[y0(1);p],f)-500; 
    dp = 1e-6;
    p=0;
    for i=1:100
        r=g(p);
        rp=g(p+dp);
        dr=(rp-r)/dp;
        p=p-r/dr;
        if abs(r)<1e-12
            break
        end
    end
    [x,y]=ode45(f,x0,[y0(1);p]);
    answer=[x,y];
    end
    
    function val=final_val(x0,y0,f)
    [x,y]=ode45(f,x0,y0);
    val=y(end,1);
    end
    