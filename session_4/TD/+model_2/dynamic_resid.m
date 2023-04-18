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
    T = model_2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(9, 1);
lhs = y(4);
rhs = y(1)*(1-params(5))+y(10);
residual(1) = lhs - rhs;
lhs = y(11);
rhs = T(1)*T(2);
residual(2) = lhs - rhs;
lhs = y(7);
rhs = y(3)^params(1);
residual(3) = lhs - rhs;
lhs = y(4);
rhs = y(5)+y(6);
residual(4) = lhs - rhs;
lhs = y(8);
rhs = y(11)*params(2)/y(7);
residual(5) = lhs - rhs;
lhs = y(12);
rhs = y(11)*params(1)/y(2);
residual(6) = lhs - rhs;
lhs = y(12);
rhs = y(7)*params(1)*y(8)/y(3);
residual(7) = lhs - rhs;
residual(8) = T(3)*(1-params(5)+y(14))-1;
lhs = y(9);
rhs = y(11)-y(10);
residual(9) = lhs - rhs;

end