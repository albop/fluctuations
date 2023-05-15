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
g1 = zeros(11, 17);
g1(1,1)=(-(1-params(5)));
g1(1,3)=1;
g1(1,9)=(-1);
g1(2,4)=(-(T(3)*(1-y(12))*exp(x(it_, 1))*getPowerDeriv(y(4),params(1),1)));
g1(2,6)=(-(T(2)*getPowerDeriv(y(6),params(2),1)));
g1(2,10)=1;
g1(2,12)=(-(T(3)*T(1)*(-exp(x(it_, 1)))));
g1(2,16)=(-(T(2)*T(3)));
g1(3,5)=(-(getPowerDeriv(y(5),params(1),1)));
g1(3,6)=1;
g1(4,3)=1;
g1(4,4)=(-1);
g1(4,5)=(-1);
g1(5,6)=(-((1+params(8))*(-(y(10)*params(2)))/(y(6)*y(6))));
g1(5,7)=1;
g1(5,10)=(-((1+params(8))*params(2)/y(6)));
g1(6,4)=(-((-(y(10)*params(1)))/(y(4)*y(4))));
g1(6,10)=(-(params(1)/y(4)));
g1(6,11)=1;
g1(7,5)=(-((-(y(6)*params(1)*y(7)))/(y(5)*y(5))));
g1(7,6)=(-(params(1)*y(7)/y(5)));
g1(7,7)=(-(params(1)*y(6)/y(5)));
g1(7,11)=1;
g1(8,8)=(1-params(5)+y(15))*params(3)*(-y(14))/(y(8)*y(8))*T(5);
g1(8,14)=(1-params(5)+y(15))*params(3)*T(5)*1/y(8);
g1(8,15)=T(4);
g1(9,8)=1;
g1(9,9)=1;
g1(9,10)=(-1);
g1(10,12)=1;
g1(10,13)=(-(x(it_, 2)*params(6)));
g1(10,17)=(-(params(6)*y(13)));
g1(11,6)=(-1);
g1(11,2)=(-params(7));
g1(11,13)=1;

end
