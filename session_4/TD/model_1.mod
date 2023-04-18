var k, c, i, y, mrk;
varexo a;
parameters alpha, beta, gamma, delta;

delta = 0.1;
alpha = 0.3;
beta = 0.96;
gamma = 4;

model;
k = k(-1)*(1-delta) + i;
y = exp(a)*k(-1)^alpha;
mrk = alpha*k(-1)^(alpha-1);
beta*(c(1)/c)^(-gamma)*(1-delta+mrk(1)) - 1;
c = y-i;
end;

 	
initval;
k = 1;
i = delta*k;
c = y-i;
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

endval;
a = 0.1;
end;

steady;

resid;

perfect_foresight_setup(periods=200);
perfect_foresight_solver;

rplot a;
rplot k c i;