%% simulates this process until 500 jumps
clear all 
e = exprnd(1,1,500);
for i = 1: 500
    t(i) = sum(e(1:i));
end 
m = (t.*3).^(1/3);
stairs([0,m], 0:length(m))
