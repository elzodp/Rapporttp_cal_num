
function [sol,niter,info,r,resrel] =jacobi(AB,B,nmaxit,tol)
    D=diag(diag(AB));
    E=-triu(AB) + D;
    F=-tril(AB) + D;
    
    sol=B;
    niter=0;
    info=0;
    r=0;
    resrel=0;
    
    for k=1:nmaxit
        sol=sol + 0.5*(B - AB*sol);
        r=B - AB*sol;
        resrel=norm(r,2)/norm(B,2);
        if resrel < tol
        info = 1;
        niter=k;
        break;
        end
    end
endfunction

AB=[2,-1,0,0,0;-1,2,-1,0,0;0,-1,2,-1,0;0,0,-1,2,-1;0,0,0,-1,2];
B=[2;0;1;3;4];
//det(AB);
[sol,niter,info,r,resrel] =jacobi(AB,B,100,0.001);
//x=AB\B;
/*x=inv(d-e)*f*x +inv(d-e)*b*/



