function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = model_2.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(31,1);
g2_j = zeros(31,1);
g2_v = zeros(31,1);

g2_i(1)=2;
g2_i(2)=2;
g2_i(3)=2;
g2_i(4)=2;
g2_i(5)=2;
g2_i(6)=2;
g2_i(7)=2;
g2_i(8)=2;
g2_i(9)=2;
g2_i(10)=3;
g2_i(11)=5;
g2_i(12)=5;
g2_i(13)=5;
g2_i(14)=6;
g2_i(15)=6;
g2_i(16)=6;
g2_i(17)=7;
g2_i(18)=7;
g2_i(19)=7;
g2_i(20)=7;
g2_i(21)=7;
g2_i(22)=7;
g2_i(23)=7;
g2_i(24)=8;
g2_i(25)=8;
g2_i(26)=8;
g2_i(27)=8;
g2_i(28)=8;
g2_i(29)=8;
g2_i(30)=8;
g2_i(31)=8;
g2_j(1)=29;
g2_j(2)=31;
g2_j(3)=55;
g2_j(4)=39;
g2_j(5)=159;
g2_j(6)=57;
g2_j(7)=65;
g2_j(8)=161;
g2_j(9)=169;
g2_j(10)=43;
g2_j(11)=57;
g2_j(12)=61;
g2_j(13)=109;
g2_j(14)=29;
g2_j(15)=35;
g2_j(16)=107;
g2_j(17)=43;
g2_j(18)=44;
g2_j(19)=56;
g2_j(20)=45;
g2_j(21)=69;
g2_j(22)=58;
g2_j(23)=70;
g2_j(24)=85;
g2_j(25)=89;
g2_j(26)=137;
g2_j(27)=90;
g2_j(28)=150;
g2_j(29)=141;
g2_j(30)=142;
g2_j(31)=154;
g2_v(1)=(-(T(2)*exp(x(it_, 1))*getPowerDeriv(y(3),params(1),2)));
g2_v(2)=(-(T(4)*T(5)));
g2_v(3)=g2_v(2);
g2_v(4)=(-(T(2)*T(4)));
g2_v(5)=g2_v(4);
g2_v(6)=(-(T(1)*getPowerDeriv(y(5),params(2),2)));
g2_v(7)=(-(T(1)*T(5)));
g2_v(8)=g2_v(7);
g2_v(9)=(-(T(1)*T(2)));
g2_v(10)=(-(getPowerDeriv(y(4),params(1),2)));
g2_v(11)=(-((-((-(y(9)*params(2)))*(y(5)+y(5))))/(y(5)*y(5)*y(5)*y(5))));
g2_v(12)=(-((-params(2))/(y(5)*y(5))));
g2_v(13)=g2_v(12);
g2_v(14)=(-((-((-(y(9)*params(1)))*(y(3)+y(3))))/(y(3)*y(3)*y(3)*y(3))));
g2_v(15)=(-((-params(1))/(y(3)*y(3))));
g2_v(16)=g2_v(15);
g2_v(17)=(-((-((-(y(5)*params(1)*y(6)))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4))));
g2_v(18)=(-((-(params(1)*y(6)))/(y(4)*y(4))));
g2_v(19)=g2_v(18);
g2_v(20)=(-((-(params(1)*y(5)))/(y(4)*y(4))));
g2_v(21)=g2_v(20);
g2_v(22)=(-(params(1)/y(4)));
g2_v(23)=g2_v(22);
g2_v(24)=(1-params(5)+y(12))*params(3)*(T(7)*(-((-y(11))*(y(7)+y(7))))/(y(7)*y(7)*y(7)*y(7))+T(6)*T(6)*T(8));
g2_v(25)=(1-params(5)+y(12))*params(3)*(T(7)*(-1)/(y(7)*y(7))+T(6)*1/y(7)*T(8));
g2_v(26)=g2_v(25);
g2_v(27)=params(3)*T(6)*T(7);
g2_v(28)=g2_v(27);
g2_v(29)=(1-params(5)+y(12))*params(3)*1/y(7)*1/y(7)*T(8);
g2_v(30)=params(3)*T(7)*1/y(7);
g2_v(31)=g2_v(30);
g2 = sparse(g2_i,g2_j,g2_v,9,169);
end
