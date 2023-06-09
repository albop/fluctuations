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
    T = model_4.static_resid_tt(T, y, x, params);
end
residual = zeros(14, 1);
lhs = y(1);
rhs = y(1)*(1-params(5))+y(10);
residual(1) = lhs - rhs;
lhs = y(11);
rhs = T(2)*T(3);
residual(2) = lhs - rhs;
lhs = y(5);
rhs = y(6)+y(7);
residual(3) = lhs - rhs;
lhs = y(6);
rhs = y(3)^params(1);
residual(4) = lhs - rhs;
lhs = y(7);
rhs = exp(x(3))*y(4)^params(1);
residual(5) = lhs - rhs;
lhs = y(1);
rhs = y(2)+y(3)+y(4);
residual(6) = lhs - rhs;
lhs = y(8);
rhs = y(11)*params(2)/y(5);
residual(7) = lhs - rhs;
lhs = y(12);
rhs = y(11)*params(1)/y(2);
residual(8) = lhs - rhs;
lhs = y(12);
rhs = y(6)*params(1)*y(8)/y(3)/(1+x(4));
residual(9) = lhs - rhs;
lhs = y(12);
rhs = y(7)*params(1)*y(8)/y(4);
residual(10) = lhs - rhs;
residual(11) = params(3)*(1-params(5)+y(12))-1;
lhs = y(9);
rhs = y(11)-y(10);
residual(12) = lhs - rhs;
lhs = y(13);
rhs = x(2)*params(6)*y(14);
residual(13) = lhs - rhs;
lhs = y(14);
rhs = y(6)+y(14)*params(7);
residual(14) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
