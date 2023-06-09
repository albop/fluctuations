function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = two_agents.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(9, 17);
g1(1,1)=(-(params(10)*1/params(10)*getPowerDeriv(y(1)/params(10),params(5),1)));
g1(1,5)=1;
g1(1,16)=(-1);
g1(2,2)=(-params(6));
g1(2,6)=1;
g1(2,17)=(-1);
g1(3,9)=1;
g1(3,11)=(-(1/params(14)));
g1(4,10)=1;
g1(4,11)=(-((-1)/(1-params(14))));
g1(5,5)=(-(y(6)/params(14)));
g1(5,6)=(-(y(5)/params(14)));
g1(5,7)=1;
g1(5,3)=(-1);
g1(5,9)=y(12);
g1(5,12)=y(9);
g1(6,7)=(-(params(1)*(-y(14))/(y(7)*y(7))*T(4)+(-(T(2)*getPowerDeriv(y(7),T(1),1)))/(T(3)*T(3))));
g1(6,14)=(-(params(1)*T(4)*1/y(7)));
g1(6,9)=(-(params(8)*y(12)*T(6)/T(3)));
g1(6,12)=1-params(8)*y(9)*T(6)/T(3);
g1(7,5)=(-((1-y(6))/(1-params(14))));
g1(7,6)=(-((-y(5))/(1-params(14))));
g1(7,8)=1;
g1(7,4)=(-1);
g1(7,10)=y(12);
g1(7,12)=y(10);
g1(8,8)=(-(params(2)*(-y(15))/(y(8)*y(8))*T(5)));
g1(8,15)=(-(params(2)*T(5)*1/y(8)));
g1(8,12)=1;
g1(9,12)=(-((-1)/(y(12)*y(12))));
g1(9,13)=1;

end
