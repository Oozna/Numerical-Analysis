header

P = [0.80 0.15 0.05; 
     0.10 0.75 0.15; 
     0.25 0.25 0.5];


s = [0 0 1];

tol = 1e-3;

err = 1;

iter = 0;

while(err > tol)
   s_0 = s;
   s = s_0*P; %odds that current situation occurs, multiplied by percentage next ocurrences
   err = max(abs(s - s_0));   %max difference between current and last iterations precentage
   iter = iter + 1;
end

mc = dtmc(P);
real = asymptotics(mc);