clear all 
i=0;
t=0;
vec = [];
m = 0;
    while m <15;
        i = i+1;
        t = t+exp(1);
        m = (t*3)^(1/3);
        vec = [vec,m];
    end
    
stairs([0,vec], 0:length(vec))