%dfunc_Project.m
function f = dfunc_Project(t, x)

m1 = 1000;
m2 = 1000;
m3 = 1000;
l = 1;
kt = 500;
k1 = 500;
keq = kt/l^2;

f = zeros (6, 1);
f(4) = ((x(2)-x(1))*keq)/m1;
f(5) = (keq*(x(1)-x(2))+k1*(x(3)-x(2)))/m2;
f(6) = (k1*(x(2)-x(3)))/m3;
f(1) = x(4);
f(2) = x(5);
f(3) = x(6);



