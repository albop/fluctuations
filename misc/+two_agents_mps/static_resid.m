function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = two_agents_mps.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
lhs = y(1);
rhs = params(10)*(y(1)/params(10))^params(5)*exp(x(1));
residual(1) = lhs - rhs;
lhs = y(2);
rhs = params(9)+params(6)*(y(2)-params(9))+x(2);
residual(2) = lhs - rhs;
lhs = y(5);
rhs = y(7)/params(14);
residual(3) = lhs - rhs;
lhs = y(6);
rhs = (-y(7))/(1-params(14));
residual(4) = lhs - rhs;
lhs = y(3);
rhs = y(1)*y(2)/params(14)+y(5)-y(5)*y(8);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = params(1)+T(1)/T(2);
residual(6) = lhs - rhs;
lhs = y(4);
rhs = y(1)*(1-y(2))/(1-params(14))+y(6)-y(6)*y(8);
residual(7) = lhs - rhs;
lhs = y(8);
rhs = 1/params(3);
residual(8) = lhs - rhs;
lhs = y(9);
rhs = 1/y(8);
residual(9) = lhs - rhs;
lhs = y(10);
rhs = (y(7)-params(11))/params(14)/(params(10)/params(14))/params(16);
residual(10) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
