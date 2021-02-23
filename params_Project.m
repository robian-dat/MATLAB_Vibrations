%params_Project.m
function params = params_Project()
m1 = 5;
m2 = 100;
m3 = 1500;
l = 1;
kt = 500;
k1 = 500;
keq = kt/l^2;

params = zeros(7,1);
params(1) = m1;
params(2) = m2;
params(3) = m3;
params(4) = l;
params(5) = kt;
params(6) = k1;
params(7) = keq;

