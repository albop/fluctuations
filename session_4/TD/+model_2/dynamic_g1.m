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
    T = model_2.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(9, 15);
g1(1,1)=(-(1-params(5)));
g1(1,4)=1;
g1(1,10)=(-1);
g1(2,2)=(-(T(2)*T(4)));
g1(2,7)=(-(T(1)*T(5)));
g1(2,11)=1;
g1(2,15)=(-(T(1)*T(2)));
g1(3,3)=(-(getPowerDeriv(y(3),params(1),1)));
g1(3,7)=1;
g1(4,4)=1;
g1(4,5)=(-1);
g1(4,6)=(-1);
g1(5,7)=(-((-(y(11)*params(2)))/(y(7)*y(7))));
g1(5,8)=1;
g1(5,11)=(-(params(2)/y(7)));
g1(6,2)=(-((-(y(11)*params(1)))/(y(2)*y(2))));
g1(6,11)=(-(params(1)/y(2)));
g1(6,12)=1;
g1(7,3)=(-((-(y(7)*params(1)*y(8)))/(y(3)*y(3))));
g1(7,7)=(-(params(1)*y(8)/y(3)));
g1(7,8)=(-(params(1)*y(7)/y(3)));
g1(7,12)=1;
g1(8,9)=(1-params(5)+y(14))*params(3)*T(6)*T(7);
g1(8,13)=(1-params(5)+y(14))*params(3)*T(7)*1/y(9);
g1(8,14)=T(3);
g1(9,9)=1;
g1(9,10)=1;
g1(9,11)=(-1);

end
