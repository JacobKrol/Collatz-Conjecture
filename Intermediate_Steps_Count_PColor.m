% Jacob Krol
% Collatz Intermediate Value Count PColor Graph (Hotspots)
clc

max = input('Max Value:');
currentval = 1;
steps = 0;

while(currentval < max)
    currentval = currentval+1;
    pos = 0;
    movingval = currentval;
    while(movingval > 1)
        if(mod(movingval,2)==0)
            movingval = movingval/2;
        else
            movingval = 3*movingval+1;
        end
        pos = pos + 1;
    end
    steps = [steps pos];
end

result = [steps 0];
result(2,:) = result;

pcolor(result)
shading interp
colormap jet
colorbar