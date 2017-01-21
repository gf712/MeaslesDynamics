syms S(t) I(t) R(t)



b = 2.34;
v = 0.111;

% f = @(t,x) [-b * x(1) * x(2); b * x(1) * x(2) - v * x(1); v * x(1)];

f = @(t,S,I,R) [-b * S * I; b * S * I - v * I; v * x(1)];

S0 = 10000
I0 = 0
R0 = 0

[t,xa] = ode45(@f,[0 10000],[1000 1 1]);

plot(t,xa(:,2))
title('Infections over time')
xlabel('t'), ylabel('Infections')