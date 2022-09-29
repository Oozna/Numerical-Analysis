header

lambda = 0.3;
mu = 0.2;
rho = lambda / mu;


P = [
  0.7 0.3 0.0 0.0 0.0;
  0.2 0.5 0.3 0.0 0.0;
  0.0 0.4 0.3 0.3 0.0;
  0.0 0.0 0.4 0.3 0.3;
  0.0 0.0 0.0 0.4 0.6
];


mc = dtmc(P);
real = asymptotics(mc);

L = sum([0,1,2,3,4] .* real)

b = L/lambda;

%little = (lambda.^2)/(mu*(mu-lambda))

%pi = ((1+(lambda/mu).^2) + (lambda.^2/(mu.^2*2))*((lambda/(mu*2))+(lambda.^2/(mu.^2*4)))).^(-1);

%W = 1/mu + pi*((rho*(rho*2).^2)/(lambda*(1-rho).^2*2))
