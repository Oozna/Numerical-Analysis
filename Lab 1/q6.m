header

NR(-1)
NR(2)
NR(4)

function NR(x)
    fprintf("\nNewton Rhapson method with start value %f\n", x)
    iteration = 0;
    x_old = inf;
    while abs(x-x_old) > 10^-15
        x_old = x;
        x = x- F(x)/F_prim(x);
        iteration = iteration + 1;
        fprintf("Iteration %i \t %.15f\n", iteration, x);
    end
end

function ret = F(x)
    ret = -(cos(x)+x/5);
end
function ret = F_prim(x)
    ret = sin(x)-1/5;
end