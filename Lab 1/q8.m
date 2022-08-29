format long
clear
clc

x_0 = fzero('-cos(x)-0.2*x',-1);
x_1 = fzero('-cos(x)-0.2*x',2);
x_2 = fzero('-cos(x)-0.2*x',4);
fprintf("Start value -1:\t %.15f\n",  x_0)
fprintf("Start value  2:\t  %.15f\n", x_1)
fprintf("Start value  4:\t  %.15f\n", x_2)