% Jacob Krol
% Collatz Base 2 Center Chain Proportion

max = input('Maximum value to be tested:');
currentval = 1;
dim=13;
chain = zeros(2,dim+1);
chain(1,:) = 1:dim+1;

while(currentval < max)
    currentval = currentval+1;
    movingval = currentval;
    while(log2(movingval)-floor(log2(movingval))>0)
        if(mod(movingval,2)==0)
            movingval = movingval/2;
        else
            movingval = 3*movingval+1;
        end
    end
    chain(2,log2(movingval)) = chain(2,log2(movingval))+1;
end

chain = [0 chain(1,:); 1 chain(2,:)];
labels = {'1' '2' '4' '8' '16' '32' '64' '128' '256' '512' '1024' '2048' '4096' '8192' '16384'};
explode = zeros(1,dim+2);
explode(5) = 1;
pie(chain(2,:),explode,labels)
title(['N=' int2str(max)])