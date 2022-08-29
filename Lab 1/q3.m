format long
clear
clc


x0 = 7;
h = 0.02;
k = 2*(2*f(x0+h/2)-f(x0+h)-f(x0) )/h^2;

f_prim = (f(x0+h)-f(x0))/h + k*h;
to_print = sprintf("Approximated value at x=7 is %.15f", f_prim);

disp(to_print)

function ret = f(x)
	ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi))-1);
end