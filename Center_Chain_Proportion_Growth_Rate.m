% Jacob Krol
% Collatz 16 as Base 2 Center Chain Proportion Growth

max = input('Maximum value to be tested:');
prop = zeros(1,max);
area = 0;
pintegral = [];

for nval = 1:max
    currentval = 1;
    dim=13;
    chain = zeros(1,dim+1);

    while(currentval < nval)
        currentval = currentval+1;
        movingval = currentval;
        while(log2(movingval)-floor(log2(movingval))>0)
            if(mod(movingval,2)==0)
                movingval = movingval/2;
            else
                movingval = 3*movingval+1;
            end
        end
        chain(log2(movingval)) = chain(log2(movingval))+1;
    end
    chain = [1 chain];
    prop(nval) = chain(5)/sum(chain);
    if(mod(nval,500)==0)
        disp(nval)
    end
    area = area + prop(nval);
    pintegral = [pintegral area];
end

proportion = subplot(2,1,1);
plot(proportion,1:max,prop)
title(['N=' int2str(max)])
xlabel('Max Testing Value')
ylabel('Proportion of Values (v<=x) w/ Chain Link 16')

integralofproportion = subplot(2,1,2);
plot(integralofproportion,1:max,pintegral)
title('Integral of Proportion of Values less than N with Center Chain 16')