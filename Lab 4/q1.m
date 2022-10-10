header
% Made by Eric Johansson, Can Kupeli and Samuel Greenberg

% Objective function
% Z = max(51.5*w +119.5*b);

% Constraints
%              -b <= 0
%              -w <= 0
%               b <= 39
%               w <= 108
%             b+w <= 110
% w*110.5+b*198.5 <= 12000
%       w*11+b*32 <= 1250



syms t
y1 = vpa(solve(f1(t) == f2(t)));
x1 = vpa(f1(y1));

y2 = vpa(solve(f1(t) == 0));
x2 = vpa(f1(y2));

x3 = vpa(solve((1250/11) - (32/11)*t == 0));
y3 = vpa(1250/11 - 32/11*x3);

fprintf("Point 1: x=%.3f   y=%.3f \n",x1,y1)
fprintf("Point 2: x=%.3f   y=%.3f \n",x2,y2)
fprintf("Point 3: x=%.3f   y=%.3f \n",x3,y3)


plot(x1, y1, 'ok', x2, y2, 'ok', x3, y3, 'ok')

hold on
axis([0 120 0 120]);
x = 0:0.1:200;
y22 = 110 - x;
y33 = (12000-198.5*x)/110.5;
y44 = (1250-32*x)/11;
plot(x,y22,'r',x,y33,'b',x,y44,"k");




[b w] = meshgrid(x);

cond1 = -b <= 0;
cond2 = -w <= 0;
cond3 = w*11+b*32 <= 1250; 
cond4 = w*110.5+b*198.5 <= 12000;
cond5 = b+w <= 110;

cond1 = double(cond1);
cond2 = double(cond2);
cond3 = double(cond3);
cond4 = double(cond4);
cond5 = double(cond5);

cond1(cond1 == 0) = NaN;
cond2(cond2 == 0) = NaN; 
cond3(cond3 == 0) = NaN; 
cond4(cond4 == 0) = NaN; 
cond5(cond5 == 0) = NaN; 

cond = cond1.*cond2.*cond3.*cond4.*cond5;
surf(b,w,cond, 'EdgeColor','blue')
view(0,90)
hold off


[maxp,maxx,maxy] = max_profit([[x1,y1];[x2,y2];[x3,y3]]);
fprintf("Max profit is %f at x = %f and y = %f \n",maxp,maxx,maxy)

function [maxp,maxx,maxy] = max_profit(arr)
    maxp = 0;
    for i = 1:length(arr)
        profit = 51.50*arr(i,2)+119.50*arr(i,1);
        if (profit > maxp)
            maxp = profit;
            maxx = arr(i,1);
            maxy = arr(i,2);
        end
    end
end

function y = f1(x)
y = (12000/198.5) - (110.5/198.5)*x;
end

function y = f2(x)
y = (1250/32) - (11/32)*x;
end