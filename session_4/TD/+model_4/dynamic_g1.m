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
    T = model_4.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(14, 25);
g1(1,1)=(-(1-params(5)));
g1(1,6)=1;
g1(1,15)=(-1);
g1(2,2)=(-(T(3)*(1-y(18))*exp(x(it_, 1))*getPowerDeriv(y(2),params(1),1)));
g1(2,10)=(-(T(2)*getPowerDeriv(y(10),params(2),1)));
g1(2,16)=1;
g1(2,18)=(-(T(3)*T(1)*(-exp(x(it_, 1)))));
g1(2,22)=(-(T(2)*T(3)));
g1(3,10)=1;
g1(3,11)=(-1);
g1(3,12)=(-1);
g1(4,3)=(-(getPowerDeriv(y(3),params(1),1)));
g1(4,11)=1;
g1(5,4)=(-(exp(x(it_, 3))*getPowerDeriv(y(4),params(1),1)));
g1(5,12)=1;
g1(5,24)=(-T(4));
g1(6,6)=1;
g1(6,7)=(-1);
g1(6,8)=(-1);
g1(6,9)=(-1);
g1(7,10)=(-((-(y(16)*params(2)))/(y(10)*y(10))));
g1(7,13)=1;
g1(7,16)=(-(params(2)/y(10)));
g1(8,7)=(-((-(y(16)*params(1)))/(y(7)*y(7))));
g1(8,16)=(-(params(1)/y(7)));
g1(8,17)=1;
g1(9,8)=(-((-(y(11)*params(1)*y(13)))/(y(8)*y(8))/(1+x(it_, 4))));
g1(9,11)=(-(params(1)*y(13)/y(8)/(1+x(it_, 4))));
g1(9,13)=(-(params(1)*y(11)/y(8)/(1+x(it_, 4))));
g1(9,17)=1;
g1(9,25)=(-((-(y(11)*params(1)*y(13)/y(8)))/((1+x(it_, 4))*(1+x(it_, 4)))));
g1(10,9)=(-((-(y(12)*params(1)*y(13)))/(y(9)*y(9))));
g1(10,12)=(-(params(1)*y(13)/y(9)));
g1(10,13)=(-(params(1)*y(12)/y(9)));
g1(10,17)=1;
g1(11,14)=(1-params(5)+y(21))*params(3)*(-y(20))/(y(14)*y(14))*T(6);
g1(11,20)=(1-params(5)+y(21))*params(3)*T(6)*1/y(14);
g1(11,21)=T(5);
g1(12,14)=1;
g1(12,15)=1;
g1(12,16)=(-1);
g1(13,18)=1;
g1(13,19)=(-(x(it_, 2)*params(6)));
g1(13,23)=(-(params(6)*y(19)));
g1(14,11)=(-1);
g1(14,5)=(-params(7));
g1(14,19)=1;

end
