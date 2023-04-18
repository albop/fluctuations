var k, k_g, k_e, e, p_e, c, i, y, mrk;
varexo a;
parameters alpha, alpha_e, beta, gamma, delta;

delta = 0.1;
alpha = 0.3;
alpha_e = 0.1;
beta = 0.96;
gamma = 4;

model;
k = k(-1)*(1-delta) + i;
y = exp(a)*k_g(-1)^alpha*e^alpha_e;
e = k_e(-1)^alpha;
k = k_g + k_e;
p_e = alpha_e * y/e;
mrk =     alpha*y/k_g(-1); //marginal productivity of capital in the final sector
mrk = p_e*alpha*e/k_e(-1); //marginal productivity of capital in the energy sector
beta*(c(1)/c)^(-gamma)*(1-delta+mrk(1)) - 1;
c = y-i;
end;

 	
initval;
k_g = 0.9;
k_e = 0.1;
k = k_g+k_e;
i = delta*k;
c = y-i;
p_e = alpha_e * y/e;
e = k_e^alpha;
y = k^alpha;
mrk = 1/beta - (1-delta);
end;

steady; // this works as long as initial guess for capital is not too bad

resid;

shocks;
var a;
periods 1:10;
values 0.0;
end;

steady;