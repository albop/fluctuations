function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(1, 2, 'int32');
  nzij_pred(1,1)=1; nzij_pred(1,2)=1;
  nzij_current = zeros(24, 2, 'int32');
  nzij_current(1,1)=1; nzij_current(1,2)=1;
  nzij_current(2,1)=4; nzij_current(2,2)=1;
  nzij_current(3,1)=2; nzij_current(3,2)=2;
  nzij_current(4,1)=4; nzij_current(4,2)=2;
  nzij_current(5,1)=6; nzij_current(5,2)=2;
  nzij_current(6,1)=3; nzij_current(6,2)=3;
  nzij_current(7,1)=4; nzij_current(7,2)=3;
  nzij_current(8,1)=7; nzij_current(8,2)=3;
  nzij_current(9,1)=2; nzij_current(9,2)=4;
  nzij_current(10,1)=3; nzij_current(10,2)=4;
  nzij_current(11,1)=5; nzij_current(11,2)=4;
  nzij_current(12,1)=7; nzij_current(12,2)=4;
  nzij_current(13,1)=5; nzij_current(13,2)=5;
  nzij_current(14,1)=7; nzij_current(14,2)=5;
  nzij_current(15,1)=8; nzij_current(15,2)=6;
  nzij_current(16,1)=9; nzij_current(16,2)=6;
  nzij_current(17,1)=1; nzij_current(17,2)=7;
  nzij_current(18,1)=9; nzij_current(18,2)=7;
  nzij_current(19,1)=2; nzij_current(19,2)=8;
  nzij_current(20,1)=5; nzij_current(20,2)=8;
  nzij_current(21,1)=6; nzij_current(21,2)=8;
  nzij_current(22,1)=9; nzij_current(22,2)=8;
  nzij_current(23,1)=6; nzij_current(23,2)=9;
  nzij_current(24,1)=7; nzij_current(24,2)=9;
  nzij_fwrd = zeros(2, 2, 'int32');
  nzij_fwrd(1,1)=8; nzij_fwrd(1,2)=6;
  nzij_fwrd(2,1)=8; nzij_fwrd(2,2)=9;
end
