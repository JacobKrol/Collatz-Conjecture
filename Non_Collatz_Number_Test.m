% Jacob Krol
% Locates "non-collatz" numbers by finding amount of odd steps in each
% value's collatz sequence.

max = input('Maximum Value:');
steps = zeros(4,max+1);
for i = 1:max
    Tsteps = 1;
    Osteps = 1;
    moving = i;
    while(moving>1)
        if(mod(moving,2)==0)
            moving = moving / 2;
        else
            moving = 3 * moving + 1;
            Osteps = Osteps + 1;
        end
        Tsteps = Tsteps + 1;
    end
    steps(1,i) = Tsteps;
    steps(2,i) = Osteps;
    if(Osteps > i)
        steps(3,i) = 1;
    end
end


mycolor = zeros(2,3);
mycolor(1,:) = [1 1 1];
mycolor(2,:) = [0.2 1 0.4];
colormap (mycolor)
pcolor(steps([3 4],:))
shading flat