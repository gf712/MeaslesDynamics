% parameters
beta = 0.3;
v = 0.11;
% maxTime corresponds to 936 weeks/18 years -> 1948 to 1966
maxTime = 936;
%tspan = linspace(0,1,maxTime);
tspan = [0 maxTime]

% UK population
N = 45000000;
% Number of infected people at the start
I0 = 7524;
% Number of recovered at the start
R0 = 0;
% Number of susceptible at the start (total pop - infected - recovered)
S0 = N-I0-R0;
S=S0;  
I=I0;   
R=N-S-I;

[t, pop] = ode45(@Diff_MeaslesSimple,tspan,[S I R],[],[beta v N]);

S=pop(:,1); 
I=pop(:,2); 
R=pop(:,3);

%  Plots the graph
T=t;
plot(T,I,'-b');
hold on;
plot(T,R,'-r');
%plot(T,S,'-k');
ylabel('Number of People');
xlabel('Time (weeks)');
legend('Infected','Recovered')
%legend('Infected','Recovered','Susceptible')
hold off;