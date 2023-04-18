var k, k_g, k_e, e, p_e, c, i, y, mrk, omega, T;
varexo a, g;
parameters alpha, alpha_e, beta, gamma, delta, kappa_omega, rho_T, tau;

delta = 0.1;
alpha = 0.3;
alpha_e = 0.1;
beta = 0.96;
gamma = 4;
kappa_omega=0.01;
rho_T = 0.9;
tau=0.1;

model;
k = k(-1)*(1-delta) + i;
y = (1-omega)*exp(a)*k_g(-1)^alpha*e^alpha_e;
e = k_e(-1)^alpha;
k = k_g + k_e;
p_e = alpha_e * y/e * (1+tau);
mrk =     alpha*y/k_g(-1); //marginal productivity of capital in the final sector
mrk = p_e*alpha*e/k_e(-1); //marginal productivity of capital in the energy sector
beta*(c(1)/c)^(-gamma)*(1-delta+mrk(1)) - 1;
c = y-i;
omega = g*kappa_omega*T;
T = rho_T*T(-1) + e;
end;

 	
initval;
k_g = 0.6;
k_e = 0.1;
k = k_g+k_e;
i = delta*k;
c = y-i;
p_e = alpha_e * y/e;
e = k_e^alpha;
y = k^alpha;
mrk = 1/beta - (1-delta);
T = 0;
omega = 0;
end;

steady; // this works as long as initial guess for capital is not too bad

resid;

endval;
g = 1; // this sets g=1 from t=1 onwards.
end;

steady;

perfect_foresight_setup(periods=800);
perfect_foresight_solver;

rplot y c;