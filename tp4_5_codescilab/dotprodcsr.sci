function [y]=dotprodcsr(x,AA,JA,IA)
    m=max(JA)
    n=size(IA)(2)-1
    y=zeros(m,1)
    A=zeros(m,n)
    ne=0
    for i=1:m
        d=IA(1,i+1)-IA(1,i)
        for j=1:d
            ne=ne+1
            y(i,1)=y(i,1)+x(JA(1,ne),1)*AA(1,ne)
        end
    end
endfunction
