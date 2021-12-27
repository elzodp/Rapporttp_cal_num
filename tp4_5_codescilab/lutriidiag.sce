function [l,d]=lutridiag(a,b,c)
    n=length(b);
    for j=1:n - 1
    u(j)=c(j);
    end
    d(1)=b(1);
    for i=2:n
        l(i - 1)=a(i - 1)./d(i - 1);
       // u(i)=c(i);
        d(i)=b(i) - (l(i - 1)*u(i - 1));
    end
    [l,d]=lutridiag(a,b,c);
endfunction
    
AB=[2,-1,0;-1,2,-1;0,-1,2];
b=diag(diag(AB));
c=triu(AB) - b;
a=tril(AB) -b;
[l,d]=lutridiag(a,b,c);
