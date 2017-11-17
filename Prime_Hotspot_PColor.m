% Jacob Krol
% Prime Hotspot Plotter
clc

max = input('Maximum checked value:');
current = 2;
primes = [0 0 3:max];

while(current < max)
    current=current+1;
    p=true;
    if(mod(current,2)==0)
        p=false;
    else
        for test = 3:2:current-1
            if(mod(current,test)==0)
                p=false;
                break
            end
        end
    end
    primes(current) = p;
end

results = [primes 0];
results(2,:) = results;

colormap jet
pcolor(results)
shading interp
colorbar
