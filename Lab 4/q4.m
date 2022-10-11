header
% Made by Eric Johansson, Can Kupeli and Samuel Greenberg

% o = x + y - 50
% Objective function
% max(51.5x + 119.5y - 2o)

% Constraints
% 110.5x + 198.5y <= 12000
%       11x + 32y <= 1250
%       x + y - o <= 50
%               o <= 60


A = [110.5 198.5 0; 11 32 0; 1 1 -1; 0 0 1];
b = [12000; 1250; 50; 60];
f = [-51.5 -119.5 2];

x = linprog(f, A, b);

profit = 51.5*x(1) + 119.5*x(2) - 2*x(3);

fprintf("Maximal profit is %.5f \n",profit)
fprintf("This is when you have %.5f wheat and %.5f barley\n",x(1),x(2))