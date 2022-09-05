header

tolerance = 10^-15

SecantMethod(-1.4,-1.3, tolerance)
SecantMethod(1.8,2, tolerance)
SecantMethod(3.7,3.9, tolerance)

function SecantMethod(left, right, tolerance)
    fprintf("\nSecant Method with left %f and right %f\n", left, right)
    iteration = 0;

    while abs(left-right) > tolerance
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
