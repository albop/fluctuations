function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = one_agent.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(4,1);
g2_j = zeros(4,1);
g2_v = zeros(4,1);

g2_i(1)=3;
g2_i(2)=3;
g2_i(3)=3;
g2_i(4)=3;
g2_j(1)=15;
g2_j(2)=17;
g2_j(3)=27;
g2_j(4)=29;
g2_v(1)=(-(params(1)*(T(2)*(-((-y(5))*(y(3)+y(3))))/(y(3)*y(3)*y(3)*y(3))+T(1)*T(1)*T(3))));
g2_v(2)=(-(params(1)*(T(2)*(-1)/(y(3)*y(3))+T(1)*1/y(3)*T(3))));
g2_v(3)=g2_v(2);
g2_v(4)=(-(params(1)*1/y(3)*1/y(3)*T(3)));
g2 = sparse(g2_i,g2_j,g2_v,3,36);
end
