header
cumwinloss = 0;

for i = 1:365
    bs = blackjacksim(100);
    cumwinloss = cumwinloss + bs(end);
end

if cumwinloss > 0
    fprintf("Total yearly earnings is %d €\n", cumwinloss)
else
    fprintf("Total yearly losses is %d €\n", cumwinloss)    
end

