%Project
%clear command window and workspace
clc
clear

%Solve the system of 6 1st order odes
tspan = [0: 0.001: 3];
%first 3 zeros are initial position, last 3 zeros are initial velocity
%give head and seat initial velocity
x0 = [0 0 0 13.89 13.89 0];
[t, x] = ode23 ('dfunc_Project', tspan, x0);

%acceleration of m1
params = params_Project();
m1 = params(1);
keq = params(7);
a1 = keq/m1*(x(:,2)-x(:,1));

%calculate jerk of m1 with finite difference methods
sz = size(a1);
j1 = zeros(sz(1),sz(2));

for i = 1:sz(1)
    if i == 1
        j1(i) = (a1(i+1)-a1(i))/(t(i+1)-t(i));
    elseif i == sz(1)
        j1(i) = (a1(i)-a1(i-1))/(t(i)-t(i-1));
    else
        j1(i) = (a1(i+1)-a1(i-1))/(t(i+1)-t(i-1));
    end
end

%display results
disp ([t x]);
hold on
subplot(4,1,3);
plot (t, a1(:, 1));
xlabel ('t');
ylabel ('acceleration');
subplot(4,1,1);
plot(t, x(:, 1));
xlabel('t');
ylabel('position');
subplot(4,1,2);
plot(t, x(:,4));
xlabel('t');
ylabel('velocity')
subplot(4,1,4);
plot(t, j1(:,1));
xlabel('t');
ylabel('jerk')




