header

syms f_real(x)
f_real(x) = ((x-5)^2.5+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi))-1);
f_prim = diff(f_real);

x = 7;
h0 = 0.04;
h1 = 0.02;
h2 = 0.01;

D3_h0 = D3(x, h0);
D3_h1 = D3(x, h1);
D3_h2 = D3(x, h2);
fprintf("h \t %.15f \t %.15f \t %.15f\n", h0,h1,h2);
fprintf("D3 \t %.15f \t %.15f \t %.15f\n" ,D3_h0,D3_h1,D3_h2);

f_biss = diff(f_prim);
f_prim_x_0 = subs(f_biss);
answer = eval(f_prim_x_0);
to_print = sprintf("Real value = %.15f", answer);
disp(to_print);

function ret = D3(x,h)
  ret = (f(x-h)-2*f(x)+f(x+h) )/(h.^2);
end

function ret = f(x)
	ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi))-1);
end
