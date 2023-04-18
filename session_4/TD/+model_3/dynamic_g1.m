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
    T = model_3.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(11, 19);
g1(1,1)=(-(1-params(5)));
g1(1,5)=1;
g1(1,11)=(-1);
g1(2,2)=(-(T(3)*(1-y(14))*exp(x(it_, 1))*getPowerDeriv(y(2),params(1),1)));
g1(2,8)=(-(T(2)*getPowerDeriv(y(8),params(2),1)));
g1(2,12)=1;
g1(2,14)=(-(T(3)*T(1)*(-exp(x(it_, 1)))));
g1(2,18)=(-(T(2)*T(3)));
g1(3,3)=(-(getPowerDeriv(y(3),params(1),1)));
g1(3,8)=1;
g1(4,5)=1;
g1(4,6)=(-1);
g1(4,7)=(-1);
g1(5,8)=(-((1+params(8))*(-(y(12)*params(2)))/(y(8)*y(8))));
g1(5,9)=1;
g1(5,12)=(-((1+params(8))*params(2)/y(8)));
g1(6,2)=(-((-(y(12)*params(1)))/(y(2)*y(2))));
g1(6,12)=(-(params(1)/y(2)));
g1(6,13)=1;
g1(7,3)=(-((-(y(8)*params(1)*y(9)))/(y(3)*y(3))));
g1(7,8)=(-(params(1)*y(9)/y(3)));
g1(7,9)=(-(params(1)*y(8)/y(3)));
g1(7,13)=1;
g1(8,10)=(1-params(5)+y(17))*params(3)*(-y(16))/(y(10)*y(10))*T(5);
g1(8,16)=(1-params(5)+y(17))*params(3)*T(5)*1/y(10);
g1(8,17)=T(4);
g1(9,10)=1;
g1(9,11)=1;
g1(9,12)=(-1);
g1(10,14)=1;
g1(10,15)=(-(x(it_, 2)*params(6)));
g1(10,19)=(-(params(6)*y(15)));
g1(11,8)=(-1);
g1(11,4)=(-params(7));
g1(11,15)=1;

end
