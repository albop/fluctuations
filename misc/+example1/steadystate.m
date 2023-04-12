function [ys_, params, info] = steadystate(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    K_Y=params(1)*params(3)/(1-params(1)*(1-params(4)));
    H_Y=K_Y^((-params(3))/(1-params(3)));
    C_Y=1-params(4)*K_Y;
    ys_(1)=(C_Y*params(5)*H_Y^(1+params(6))/(1-params(3)))^((-1)/(1+params(6)));
    ys_(2)=C_Y*ys_(1);
    ys_(3)=K_Y*ys_(1);
    ys_(5)=H_Y*ys_(1);
    ys_(4)=0;
    ys_(6)=0;
    % Auxiliary equations
end
