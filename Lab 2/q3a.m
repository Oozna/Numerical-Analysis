header


[N1d100,mu1d100,err1d100]=mcconv([-5 5],100);
waitforbuttonpress
[N1d1000000,mu1d1000000,err1d1000000]=mcconv([-5 5],1000000);
waitforbuttonpress
[N2d100,mu2d100,err2d100]=mcconv([-5 5; -5 5],100);
waitforbuttonpress
[N2d1000000,mu2d1000000,err2d1000000]=mcconv([-5 5; -5 5],1000000);