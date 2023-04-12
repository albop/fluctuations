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
    T = two_agents.static_g1_tt(T, y, x, params);
end
g1 = zeros(9, 9);
g1(1,1)=1-params(10)*1/params(10)*getPowerDeriv(y(1)/params(10),params(5),1);
g1(2,2)=1-params(6);
g1(3,5)=1;
g1(3,7)=(-(1/params(14)));
g1(4,6)=1;
g1(4,7)=(-((-1)/(1-params(14))));
g1(5,1)=(-(y(2)/params(14)));
g1(5,2)=(-(y(1)/params(14)));
g1(5,3)=1;
g1(5,5)=(-(1-y(8)));
g1(5,8)=y(5);
g1(6,3)=(-((-(T(1)*getPowerDeriv(y(3),(-1)/params(4),1)))/(T(2)*T(2))));
g1(6,5)=(-(params(8)*y(8)*T(3)/T(2)));
g1(6,8)=1-params(8)*y(5)*T(3)/T(2);
g1(7,1)=(-((1-y(2))/(1-params(14))));
g1(7,2)=(-((-y(1))/(1-params(14))));
g1(7,4)=1;
g1(7,6)=(-(1-y(8)));
g1(7,8)=y(6);
g1(8,8)=1;
g1(9,8)=(-((-1)/(y(8)*y(8))));
g1(9,9)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
