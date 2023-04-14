var k, c, i, y, omega, T, rk;
varexo a, gw;
parameters alpha, beta, gamma, delta, s, Tsus;

delta = 0.1;
alpha = 0.3;
beta = 0.96;
gamma = 4;
s = 0.22;

Tsus = 1.0;
kappa = 0.1

model;

k = k(-1)*(1-delta) + i;
y = exp(a)*(1-omega)*k^alpha;
beta*(c(1)/c)^(-gamma)*rk(1) - 1;
rk = alpha*k^(alpha-1) + (1-delta);
c = y-i;
omega = 0.1*(T - Tsus);
T = Tsus + y*(0.0001*gw); // temperature increases with economic activity

end;

 	
initval;
k = 1;
i = 1;
c = y-i;
T = 1.0;
gw = 0.0;
rk = 1/beta;
end;

steady;


endval;
k = 1;
i = 1;
c = y-i;
T = 1.0;
gw = 1.0;
rk = 1/beta;
end;

shocks;
var a;
periods 1:200;
values .1;
end;

perfect_foresight_setup(periods=200);

perfect_foresight_solver;


