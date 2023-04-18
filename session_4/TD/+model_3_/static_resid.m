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
    T = model_3_.static_resid_tt(T, y, x, params);
end
residual = zeros(11, 1);
lhs = y(1);
rhs = y(1)*(1-params(5))+y(7);
residual(1) = lhs - rhs;
lhs = y(8);
rhs = T(2)*T(3);
residual(2) = lhs - rhs;
lhs = y(4);
rhs = y(3)^params(1);
residual(3) = lhs - rhs;
lhs = y(1);
rhs = y(2)+y(3);
residual(4) = lhs - rhs;
lhs = y(5);
rhs = y(8)*params(2)/y(4);
residual(5) = lhs - rhs;
lhs = y(9);
rhs = y(8)*params(1)/y(2);
residual(6) = lhs - rhs;
lhs = y(9);
rhs = y(4)*params(1)*y(5)/y(3);
residual(7) = lhs - rhs;
residual(8) = params(3)*(1-params(5)+y(9))-1;
lhs = y(6);
rhs = y(8)-y(7);
residual(9) = lhs - rhs;
lhs = y(10);
rhs = x(2)*params(6)*y(11);
residual(10) = lhs - rhs;
lhs = y(11);
rhs = y(4)+y(11)*params(7);
residual(11) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
