Y = 10     % initial point
sim = []   % zero vector
i=0;
while i < 2000   % from 10 to 2000
    i=i+1;
    pi_x = poisspdf(Y,5);
    y = Y;
      % intial point changed with Y
    u = rand;   % proposal distribution for q(x,y)
    if u > .5
       Y = Y+1;
    else 
       Y = Y-1;
    end 
    z = rand; 
  
    pi_Y = poisspdf(Y,5);
    r = min(1,pi_Y/pi_x);
    if     z < r 
       Y = Y;
    else
        Y = y
    end

    sim(i) = Y

end

figure
h=hist(sim, max(sim)+1);
h=h/sum(h);
pois=arrayfun(@(x)exp(-5)*5^x/factorial(x), [0:max(sim)]);
comparison=vertcat(h,pois)';
final=bar(0:max(sim),comparison);
grid on
l = cell(1,2);
l{1}='sim'; l{2}='Poisson';
legend(final,l);
