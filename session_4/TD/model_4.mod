var k, k_g, k_f, k_r, e, e_f, e_r, p_e, c, i, y, mrk, omega, T;
varexo a, g, theta, tau;
parameters alpha, alpha_e, beta, gamma, delta, kappa_omega, rho_T;

delta = 0.1;
alpha = 0.3;
alpha_e = 0.1;
beta = 0.96;
gamma = 4;
kappa_omega=0.01;
rho_T = 0.9;

model;
k = k(-1)*(1-delta) + i;
y = (1-omega)*exp(a)*k_g^alpha*e^alpha_e;
e = e_f + e_r;
e_f =            k_f^alpha;
e_r = exp(theta)*k_r^alpha;
k(-1) = k_f + k_r + k_g;
p_e = alpha_e * y/e;
mrk =      alpha*  y/k_g;         //marginal productivity of capital in the final sector
mrk =  p_e*alpha*e_f/k_f/(1+tau); //marginal productivity of capital in the fossil energy sector
mrk =  p_e*alpha*e_r/k_r;         //marginal productivity of capital in the green energy sector
beta*(c(1)/c)^(-gamma)*(1-delta+mrk(1)) - 1;
c = y-i;
omega = g*kappa_omega*T;
T = rho_T*T(-1) + e_f;
end;

 	
initval;
theta=0;
k_g = 0.6;
k_f = 0.1;
k_r = 0.1;
e_f = k_f^alpha;
e_r = k_f^alpha;
e = e_f + e_r;
k = k_g+k_f+k_r;
i = delta*k;
c = y-i;
y = k_g^alpha*e^alpha_e;
p_e = alpha_e * y/e;

mrk = 1/beta - (1-delta);
T = 0;
end;

steady; // this works as long as initial guess for capital is not too bad

resid;

//shocks;
//var tau;
//periods 1:50;
//values 0.05;
//end;

endval;
tau = 0.1;
g = 1; // this sets g=1 from t=1 onwards.
end;

steady;

perfect_foresight_setup(periods=200);
perfect_foresight_solver;

//rplot p_e p_r;

//rplot y c;