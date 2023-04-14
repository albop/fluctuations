var k, c, i, y, k_e, k_f, k_r, omega, p_e, p_r, e, e_f, e_r, T, rk;
varexo a, gw, theta;
parameters alpha, alpha_e beta, gamma, delta, s, Tsus ;

delta = 0.1;
alpha = 0.3;
alpha_e = 0.1;
beta = 0.96;
gamma = 4;
s = 0.22;

Tsus = 1.0;
kappa = 0.1


model;

c = y-i; // budget constraint

k = k(-1)*(1-delta) + i;

k = k_e + k_f + k_r;                                            // capital allocation
//y = exp(a)*(1-omega)*(k_f)^alpha*e^alpha_e*e_r^alpha_e;   // final good
y = exp(a)*(1-omega)*(k_f)^alpha*(e)^alpha_e;   // final good

e = e_f + theta*e_r;

e_f = exp(a)*(1-omega)*(k_e)^alpha;             // energy production
e_r = exp(a)*(1-omega)*(k_r)^alpha;             // energy production

p_e = alpha_e*y/k_e;                // price of energy
p_r = theta*alpha_e*y/k_r;                // price of energy


alpha*y/k_f = alpha*e/k_e*p_e;      // equality of marginal returns
alpha*y/k_f = alpha*e_r/k_r*p_e;      // equality of marginal returns


beta*(c(1)/c)^(-gamma)*rk(1) - 1;   // optimality condition
rk = alpha*y/k_f + (1-delta);       // return on capital

omega = 0.1*(T - Tsus); // damage function
//T = Tsus + y*(0.0001*gw); // temperature increases with economic activity
T = Tsus + e*(gw); // temperature increases with use of energy

end;

 	
initval;

theta=0.001;

k = 3;
k_r = k*0.01;
k_e = k*0.09;
k_f = k*0.9;

e_f = (k_e)^alpha;
e_r = (k_r)^alpha;

e = e_f + theta*e_r;

y = (k_f)^alpha*e^alpha_e;

p_e = alpha_e*y/k_e;                // price of energy
p_r = theta*alpha_e*y/k_r;                // price of energy

i = k*delta;
c = y-i;
T = 1.0;
gw = 0.0;
rk = 1/beta;
end;

resid();

steady;


endval;
gw = 1.0;
theta = 0.1;
end;

//shocks;
//var a;
//periods 1:200;
//values .1;
//end;

perfect_foresight_setup(periods=200);

perfect_foresight_solver;


