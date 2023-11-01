function X= TFTD_cajon()
    K = 10; n = [-K:K];
    N = 3; x = cajN(n,N);
    
    ds = 0.001; s = [-2:ds:2]; X = zeros(size(s));
    for k = 1:length(s)
        X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
    end
    
    plot(s,X)
