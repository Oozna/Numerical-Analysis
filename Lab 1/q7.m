format long
clear
clc

SecantMethod(-1.4,-1.3)
SecantMethod(1.8,2)
SecantMethod(3.7,3.9)

function SecantMethod(left, right)
    iteration = 0;

    while abs(left-right) > 10^-15
        x2=(left*F(right)-right*F(left))/(F(right)-F(left));
        left=right;        
        right=x2;
        iteration = iteration + 1;
        fprintf("Iteration %i: \t %.15f\n", iteration, x2);
    end
end

function ret = F(x)
    ret = -(cos(x)+x/5);
end