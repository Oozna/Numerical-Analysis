header

P_old = [0.80 0.15 0.05; 
     0.10 0.75 0.15; 
     0.25 0.25 0.5];
     
P_a = [1 0 0; 
       0 1 0; 
       0 0 1];


P_b = [1/2 1/2 0; 
       1/3 2/3 0; 
       1/3 1/3 1/3];



tol = 1e-3;
start = 3;
ans_old = solve(P_old, P_old(start,:), tol);
% ans_a = solve(P_a, P_a(start,:), tol);
ans_b = solve(P_b, P_b(start,:), tol);

function ret = solve(P, s_0, tol)
    s = s_0;
    err = 1;
    iter = 0;

    while(err > tol)
       s_0 = s;
       s = s_0*P;
       err = max(abs(s - s_0));
       iter = iter + 1;
    end
    
    ret = s;
end