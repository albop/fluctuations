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
    T = two_agents_mps.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(10, 1);
lhs = y(5);
rhs = T(1);
residual(1) = lhs - rhs;
lhs = y(6);
rhs = params(9)+params(6)*(y(2)-params(9))+x(it_, 2);
residual(2) = lhs - rhs;
lhs = y(9);
rhs = y(11)/params(14);
residual(3) = lhs - rhs;
lhs = y(10);
rhs = (-y(11))/(1-params(14));
residual(4) = lhs - rhs;
lhs = y(7);
rhs = y(5)*y(6)/params(14)+y(3)-y(9)*y(12);
residual(5) = lhs - rhs;
lhs = y(12);
rhs = params(1)*(y(15)/y(7))^T(2)+T(3)/T(4);
residual(6) = lhs - rhs;
lhs = y(8);
rhs = y(5)*(1-y(6))/(1-params(14))+y(4)-y(10)*y(12);
residual(7) = lhs - rhs;
lhs = y(12);
rhs = 1/params(3);
residual(8) = lhs - rhs;
lhs = y(13);
rhs = 1/y(12);
residual(9) = lhs - rhs;
lhs = y(14);
rhs = (y(11)-params(11))/params(14)/(params(10)/params(14))/params(16);
residual(10) = lhs - rhs;

end
