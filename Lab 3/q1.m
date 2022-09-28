header

overforingsmatris = [0.8 0.15 0.05; 0.1 0.75 0.15; 0.25 0.25 0.5];


s = [0 0 1];

tol = 0.00001;

err = 1;

iter = 0;

while(err > tol)
   s_0 = s;
   s = s_0*overforingsmatris; %odds that current situation occurs, multiplied by percentage next ocurrences
   err = max(abs(s - s_0));%max difference between current and last iterations precentage
   iter = iter + 1;
end

x =  s * (overforingsmatris-eye(3));

