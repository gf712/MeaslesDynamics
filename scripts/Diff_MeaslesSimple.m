function dPop=Diff_MeaslesSimple(t,pop, parameter)

beta = parameter(1); 
v = parameter(2); 
N=parameter(3);
S=pop(1); 
I=pop(2); 
R=pop(3);
dPop=zeros(3,1);

dPop(1) = - beta * ((S * I) / N);
dPop(2) = beta * ((S * I) / N) - v * I;
dPop(3) = v * I;