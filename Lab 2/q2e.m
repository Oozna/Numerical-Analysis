header
loops = 1000;
p = [5, 1, 1, 1, 1, 5];

p = p / sum(p); % precentage of each roll  
F = cumsum(p); % precentage of each roll with the rolls before 

counter = 1;
inverse_sampler = zeros(1, loops);
while(counter <= loops)
    u = rand(1); 
    inverse_sampler(counter) = sum(u > F) + 1;
    counter = counter + 1;
end

histogram(inverse_sampler)