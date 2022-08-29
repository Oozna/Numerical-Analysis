format long
clear
clc


syms f(x)
f(x) = ((x-5)^2.5+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi))-1);
f_prim = diff(f);
x = 7;

f_prim_x_0 = subs(f_prim);

a = eval(f_prim_x_0);
to_print = sprintf("Answer = %.15f", a);
disp(to_print);