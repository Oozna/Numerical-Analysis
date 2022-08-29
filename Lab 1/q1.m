format long
clear
clc

x0 = 7;

h0 = 0.04;
h1 = 0.02;
h2 = 0.01;

D1_h0 = D1(x0, h0);
D1_h1 = D1(x0, h1);
D1_h2 = D1(x0, h2);

D2_h0 = D2(x0, h0);
D2_h1 = D2(x0, h1);
D2_h2 = D2(x0, h2);


line1 = sprintf("h \t %.15f \t %.15f \t %.15f", h0,h1,h2);
line2 = sprintf("D1 \t %.15f \t %.15f \t %.15f" ,D1_h0,D1_h1,D1_h2);
line3 = sprintf("D2 \t %.15f \t %.15f \t %.15f" ,D2_h0,D2_h1,D2_h2);
disp(line1)
disp(line2)
disp(line3)

function ret = D1(x0, h)
	ret = (f(x0+h)-f(x0))/h;
end

function ret = D2(x0, h)
	ret = (f(x0+h)-f(x0-h))/(2*h);
end

function ret = f(x)
	ret = (sqrt((x-5).^5)+2*cos(pi*sqrt(x)))/(sqrt(x+4*log(x-pi))-1);
end
