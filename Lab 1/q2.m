header

x = 7;
f = str2sym('((x-5)^2.5+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi))-1)');
f_prim = diff(f);
f_prim_x_0 = subs(f_prim);

fprintf("Answer = %.15f\n", eval(f_prim_x_0));
