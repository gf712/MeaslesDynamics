beta = 2.3;
v = 0.111;
maxTime = 1000;

N = 5000000;
I0 = 1;
R0 = 0;
S0 = N-I0-R0;
S=S0;  
I=I0;   
R=N-S-I;

[t, pop] = ode45(@Diff_Measles,[0 maxTime],[S I R],[],[beta v N]);

S=pop(:,1); 
I=pop(:,2); 
R=pop(:,3);

%  Plots the graph
T=t;
plot(T,I,'-b');
ylabel ('Number Infected');