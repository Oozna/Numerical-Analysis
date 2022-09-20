header

[N,mu, err] = mcconv([-5 5]); 
a = polyfit(log(N),log(err),1);

waitforbuttonpress
fprintf("p = %.15f \t C = %.15f\n", a(1), a(2))

[N,mu, err] = mcconv([-5 5; -5 5]); 
a = polyfit(log(N),log(err),1);
fprintf("p = %.15f \t C = %.15f\n", a(1), a(2))