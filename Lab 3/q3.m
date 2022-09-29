header

P = [0.80 0.15 0.05; 
     0.10 0.75 0.15; 
     0.25 0.25 0.5];

F = cumsum(P, 2);
N = 1e6;
tol = 1e-3;
count = [0 0 0];

% Index for bull, bear and recession
bull = 1;
bear = 2;
rec  = 3;

curr = bull;

for i = 1:N  
   count(curr) = count(curr) + 1;
   rnd = rand(1);
   if rnd < F(curr, bull)
       curr = bull;
   elseif rnd < F(curr, bear)
       curr = bear;
   else 
       curr = rec;
   end
end

%Sannolikheten att vi landar på bull, bear eller recession efter N antal
%iterationer
res = count/sum(count);