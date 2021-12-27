
function [AA,JA,IA]=formacsr(A)
    [m,n]=size(A)
    AA=zeros(1,nnz(A))
    JA=zeros(1,nnz(A))
    IA=zeros(1,l+1)
    IA(1,1)=1
    ne=0
    for i=1:m
        for j=1:n
            if (A(i,j)~=0)
                ne=ne+1
                AA(1,ne)=A(i,j)
                JA(1,ne)=j
            end
            IA(1,i+1)=ne+1
        end
    end
endfunction
