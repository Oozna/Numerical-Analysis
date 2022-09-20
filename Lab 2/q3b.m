[N,mu, err] = mcconv([-5 5]); 
a = polyfit(log(N),log(err),1);