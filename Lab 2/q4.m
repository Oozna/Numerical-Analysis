header
cumwinloss = 0;
day = 1;

while day < 366
    bs = blackjacksim(100);
    cumwinloss = cumwinloss + bs(end);
    day = day+1;
end
if cumwinloss > 0
    fprintf("Total yearly earnings is %d\n", cumwinloss)
else
    fprintf("Total yearly losses is %d\n", cumwinloss)    
end

