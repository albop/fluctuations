function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = model_4.static_g1_tt(T, y, x, params);
end
g1 = zeros(14, 14);
g1(1,1)=1-(1-params(5));
g1(1,10)=(-1);
g1(2,2)=(-(T(3)*(1-y(13))*exp(x(1))*getPowerDeriv(y(2),params(1),1)));
g1(2,5)=(-(T(2)*getPowerDeriv(y(5),params(2),1)));
g1(2,11)=1;
g1(2,13)=(-(T(3)*T(1)*(-exp(x(1)))));
g1(3,5)=1;
g1(3,6)=(-1);
g1(3,7)=(-1);
g1(4,3)=(-(getPowerDeriv(y(3),params(1),1)));
g1(4,6)=1;
g1(5,4)=(-(exp(x(3))*getPowerDeriv(y(4),params(1),1)));
g1(5,7)=1;
g1(6,1)=1;
g1(6,2)=(-1);
g1(6,3)=(-1);
g1(6,4)=(-1);
g1(7,5)=(-((-(y(11)*params(2)))/(y(5)*y(5))));
g1(7,8)=1;
g1(7,11)=(-(params(2)/y(5)));
g1(8,2)=(-((-(y(11)*params(1)))/(y(2)*y(2))));
g1(8,11)=(-(params(1)/y(2)));
g1(8,12)=1;
g1(9,3)=(-((-(y(6)*params(1)*y(8)))/(y(3)*y(3))/(1+x(4))));
g1(9,6)=(-(params(1)*y(8)/y(3)/(1+x(4))));
g1(9,8)=(-(params(1)*y(6)/y(3)/(1+x(4))));
g1(9,12)=1;
g1(10,4)=(-((-(y(7)*params(1)*y(8)))/(y(4)*y(4))));
g1(10,7)=(-(params(1)*y(8)/y(4)));
g1(10,8)=(-(params(1)*y(7)/y(4)));
g1(10,12)=1;
g1(11,12)=params(3);
g1(12,9)=1;
g1(12,10)=1;
g1(12,11)=(-1);
g1(13,13)=1;
g1(13,14)=(-(x(2)*params(6)));
g1(14,6)=(-1);
g1(14,14)=1-params(7);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
