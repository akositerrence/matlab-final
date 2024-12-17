function p = prepe()
    f=@(x,p)exp(p.*x);
    F=@(p)integral(@(x)f(x,p),0,1)-2;
    dp=1e-6;
    p=1;
    for i=1:100
        r=F(p);
        rp=F(p+dp);
        dr=(rp-r)/dp;
        p=p-r/dr;
        if abs(r)<1e-12
            break
        end
    end
    end
    