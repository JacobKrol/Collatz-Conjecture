% Jacob Krol
% Finds the time between 16 as center chain value

max = input('Maximum value to be tested:');
chainval = zeros(1,max);
space = 0;
freq = [ ];
non16 = [;];

for nval = 1:max
    movingval = nval;
    while(log2(movingval)-floor(log2(movingval))>0)
        if(mod(movingval,2)==0)
            movingval = movingval/2;
        else
            movingval = 3*movingval+1;
        end
    end
    chainval(nval) = movingval;
    if(movingval ~= 16)
        freq = [freq space];
        non16 = [non16 [nval;space]];
        space = 0;
    else
        space = space + 1;
    end
end

scatter(non16(1,:),non16(2,:),5)

