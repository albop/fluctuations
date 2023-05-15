function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = model_4.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(14, 1);
lhs = y(6);
rhs = y(1)*(1-params(5))+y(15);
residual(1) = lhs - rhs;
lhs = y(16);
rhs = T(2)*T(3);
residual(2) = lhs - rhs;
lhs = y(10);
rhs = y(11)+y(12);
residual(3) = lhs - rhs;
lhs = y(11);
rhs = y(3)^params(1);
residual(4) = lhs - rhs;
lhs = y(12);
rhs = T(4);
residual(5) = lhs - rhs;
lhs = y(6);
rhs = y(8)+y(9)+y(7);
residual(6) = lhs - rhs;
lhs = y(13);
rhs = y(16)*params(2)/y(10);
residual(7) = lhs - rhs;
lhs = y(17);
rhs = y(16)*params(1)/y(7);
residual(8) = lhs - rhs;
lhs = y(17);
rhs = y(11)*params(1)*y(13)/y(8)/(1+x(it_, 4));
residual(9) = lhs - rhs;
lhs = y(17);
rhs = y(12)*params(1)*y(13)/y(9);
residual(10) = lhs - rhs;
residual(11) = T(5)*(1-params(5)+y(21))-1;
lhs = y(14);
rhs = y(16)-y(15);
residual(12) = lhs - rhs;
lhs = y(18);
rhs = x(it_, 2)*params(6)*y(19);
residual(13) = lhs - rhs;
lhs = y(19);
rhs = y(11)+params(7)*y(5);
residual(14) = lhs - rhs;

end
