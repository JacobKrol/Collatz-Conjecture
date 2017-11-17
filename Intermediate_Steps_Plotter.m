% Jacob Krol
% Collatz Intermediate Value Plotter
clc

c = input('Starting Value:');
pos=1;

while(c(pos) > 1)
    if(mod(c(pos),2)==0)
        c = [c c(pos)/2];
    else
        c = [c 3*c(pos)+1];
    end

    pos = pos + 1;
end

plot(1:pos,c)