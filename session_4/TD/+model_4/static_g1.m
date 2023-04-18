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
g1 = zeros(16, 16);
g1(1,1)=1-(1-params(5));
g1(1,12)=(-1);
g1(2,2)=(-(T(3)*(1-y(15))*exp(x(1))*getPowerDeriv(y(2),params(1),1)));
g1(2,5)=(-(T(2)*getPowerDeriv(y(5),params(2),1)));
g1(2,13)=1;
g1(2,15)=(-(T(3)*T(1)*(-exp(x(1)))));
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
g1(7,5)=(-((-(y(13)*params(2)))/(y(5)*y(5))));
g1(7,8)=1;
g1(7,13)=(-(params(2)/y(5)));
g1(8,5)=(-((-(y(13)*params(2)))/(y(5)*y(5))));
g1(8,9)=1;
g1(8,13)=(-(params(2)/y(5)));
g1(9,5)=(-((1+x(4))*(-(y(13)*params(2)))/(y(5)*y(5))));
g1(9,10)=1;
g1(9,13)=(-((1+x(4))*params(2)/y(5)));
g1(10,2)=(-((-(y(13)*params(1)))/(y(2)*y(2))));
g1(10,13)=(-(params(1)/y(2)));
g1(10,14)=1;
g1(11,3)=(-((-(y(6)*params(1)*y(8)))/(y(3)*y(3))));
g1(11,6)=(-(params(1)*y(8)/y(3)));
g1(11,8)=(-(params(1)*y(6)/y(3)));
g1(11,14)=1;
g1(12,4)=(-((-(y(7)*params(1)*y(8)))/(y(4)*y(4))));
g1(12,7)=(-(params(1)*y(8)/y(4)));
g1(12,8)=(-(params(1)*y(7)/y(4)));
g1(12,14)=1;
g1(13,14)=params(3);
g1(14,11)=1;
g1(14,12)=1;
g1(14,13)=(-1);
g1(15,15)=1;
g1(15,16)=(-(x(2)*params(6)));
g1(16,6)=(-1);
g1(16,16)=1-params(7);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
