// on agent with preference for wealth

var y, c, b, mps;
varexo e_y;

parameters beta, r, q, db, sigma, rho, eta, phi, zbar, ybar, bbar, cbar, chi, sig_z;


r = 1.04;
sigma = 0.5;
q = 1/r;

chi = 0.05; // fraction of top earners

// steady-state income
zbar = 0.1807; // top 5% income share
lev = 0.91;    // total assets/gdp

ybar = zbar/chi; // income per capita
bbar = lev;      // assets levels

// autocorrelation of income shock
rho = 1.0;

cbar = ybar + bbar*(1-q)/chi; // per capita consumption


// preference for wealth parameters
eta = 0.6;
phi = 0.05;

beta = 1/r - phi*(1+bbar/chi*q)^(-1/eta)/(cbar^(-1/sigma));

// we need some additional parameters for the steady-state calibration
// debt level a the steady-state is targeted to calibrate the model

sig_z = 0.01;


// one needs at least a static equation
model;
y = ybar + 0*e_y;
c = y + (b(-1) - b*q)/chi;
1/r = beta*(c(1)/c(0))^(-1/sigma) + phi*(1+b*q/chi)^(-1/eta)/(c^(-1/sigma));

[name='Marginal Propensity to Consume']
mps = (b-bbar)/chi*q / sig_z ;

end;

steady_state_model;
y = ybar;
b = bbar;         // debt level a the steady-state is targeted to calibrate the model
c = cbar; 
f  = 0.0;
end;

shocks;
var e_y; stderr sig_z;
end;


steady;
check;


stoch_simul;
