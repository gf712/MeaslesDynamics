function dPop=Diff_MeaslesRegeneration(t,pop, parameter)

beta = parameter(1); 
v = parameter(2);
gamma = parameter(3);
N=parameter(4);

S=pop(1); 
I=pop(2); 
R=pop(3);

dPop=zeros(3,1);
dPop(1) = - beta * ((S * I) / N) + gamma * R;
dPop(2) = beta * ((I * S) / N) - v * I;
dPop(3) = v * I - gamma * R;