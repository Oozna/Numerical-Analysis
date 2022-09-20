
clear
clc
format long

n = 200; %antal kast per medelv�rde
N = 10^5; %antal upprepningar
for i=1:length(N)
    figure;
    hold on
    r = zeros(1,N(i));
    for j=1:N(i)
        y = floor(1+6*rand(1,n));
        r(j) = mean(y);
    end
    hist(r,100); % Rita ett histogram med 100 intervall
    title([num2str(n),' st kast per medelv�rde med ', num2str(N(i)), ' upprepningar'])
    xlabel('Medelv�rden')
    ylabel('Frekvensen')
    shg

end
sigma = sqrt(35/(12*n));
mu = 3.5;
x =2.8:0.01:4.2;
f = 1/(sigma*sqrt(2*pi))*exp(-((x-mu).^2)/(2*sigma.^2));
plot(x,1000*f, 'Color','red','LineWidth',4);
