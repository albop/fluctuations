%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'model_4';
M_.dynare_version = '5.2';
oo_.dynare_version = '5.2';
options_.dynare_version = '5.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(4,1);
M_.exo_names_tex = cell(4,1);
M_.exo_names_long = cell(4,1);
M_.exo_names(1) = {'a'};
M_.exo_names_tex(1) = {'a'};
M_.exo_names_long(1) = {'a'};
M_.exo_names(2) = {'g'};
M_.exo_names_tex(2) = {'g'};
M_.exo_names_long(2) = {'g'};
M_.exo_names(3) = {'theta'};
M_.exo_names_tex(3) = {'theta'};
M_.exo_names_long(3) = {'theta'};
M_.exo_names(4) = {'tau'};
M_.exo_names_tex(4) = {'tau'};
M_.exo_names_long(4) = {'tau'};
M_.endo_names = cell(16,1);
M_.endo_names_tex = cell(16,1);
M_.endo_names_long = cell(16,1);
M_.endo_names(1) = {'k'};
M_.endo_names_tex(1) = {'k'};
M_.endo_names_long(1) = {'k'};
M_.endo_names(2) = {'k_g'};
M_.endo_names_tex(2) = {'k\_g'};
M_.endo_names_long(2) = {'k_g'};
M_.endo_names(3) = {'k_f'};
M_.endo_names_tex(3) = {'k\_f'};
M_.endo_names_long(3) = {'k_f'};
M_.endo_names(4) = {'k_r'};
M_.endo_names_tex(4) = {'k\_r'};
M_.endo_names_long(4) = {'k_r'};
M_.endo_names(5) = {'e'};
M_.endo_names_tex(5) = {'e'};
M_.endo_names_long(5) = {'e'};
M_.endo_names(6) = {'e_f'};
M_.endo_names_tex(6) = {'e\_f'};
M_.endo_names_long(6) = {'e_f'};
M_.endo_names(7) = {'e_r'};
M_.endo_names_tex(7) = {'e\_r'};
M_.endo_names_long(7) = {'e_r'};
M_.endo_names(8) = {'p_e'};
M_.endo_names_tex(8) = {'p\_e'};
M_.endo_names_long(8) = {'p_e'};
M_.endo_names(9) = {'p_f'};
M_.endo_names_tex(9) = {'p\_f'};
M_.endo_names_long(9) = {'p_f'};
M_.endo_names(10) = {'p_r'};
M_.endo_names_tex(10) = {'p\_r'};
M_.endo_names_long(10) = {'p_r'};
M_.endo_names(11) = {'c'};
M_.endo_names_tex(11) = {'c'};
M_.endo_names_long(11) = {'c'};
M_.endo_names(12) = {'i'};
M_.endo_names_tex(12) = {'i'};
M_.endo_names_long(12) = {'i'};
M_.endo_names(13) = {'y'};
M_.endo_names_tex(13) = {'y'};
M_.endo_names_long(13) = {'y'};
M_.endo_names(14) = {'mrk'};
M_.endo_names_tex(14) = {'mrk'};
M_.endo_names_long(14) = {'mrk'};
M_.endo_names(15) = {'omega'};
M_.endo_names_tex(15) = {'omega'};
M_.endo_names_long(15) = {'omega'};
M_.endo_names(16) = {'T'};
M_.endo_names_tex(16) = {'T'};
M_.endo_names_long(16) = {'T'};
M_.endo_partitions = struct();
M_.param_names = cell(7,1);
M_.param_names_tex = cell(7,1);
M_.param_names_long = cell(7,1);
M_.param_names(1) = {'alpha'};
M_.param_names_tex(1) = {'alpha'};
M_.param_names_long(1) = {'alpha'};
M_.param_names(2) = {'alpha_e'};
M_.param_names_tex(2) = {'alpha\_e'};
M_.param_names_long(2) = {'alpha_e'};
M_.param_names(3) = {'beta'};
M_.param_names_tex(3) = {'beta'};
M_.param_names_long(3) = {'beta'};
M_.param_names(4) = {'gamma'};
M_.param_names_tex(4) = {'gamma'};
M_.param_names_long(4) = {'gamma'};
M_.param_names(5) = {'delta'};
M_.param_names_tex(5) = {'delta'};
M_.param_names_long(5) = {'delta'};
M_.param_names(6) = {'kappa_omega'};
M_.param_names_tex(6) = {'kappa\_omega'};
M_.param_names_long(6) = {'kappa_omega'};
M_.param_names(7) = {'rho_T'};
M_.param_names_tex(7) = {'rho\_T'};
M_.param_names_long(7) = {'rho_T'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 16;
M_.param_nbr = 7;
M_.orig_endo_nbr = 16;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.orig_eq_nbr = 16;
M_.eq_nbr = 16;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 6 0;
 2 7 0;
 3 8 0;
 4 9 0;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 22;
 0 17 0;
 0 18 0;
 0 19 23;
 0 20 0;
 5 21 0;]';
M_.nstatic = 9;
M_.nfwrd   = 2;
M_.npred   = 5;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 5;
M_.ndynamic   = 7;
M_.dynamic_tmp_nbr = [6; 1; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'k' ;
  2 , 'name' , 'y' ;
  3 , 'name' , 'e' ;
  4 , 'name' , 'e_f' ;
  5 , 'name' , 'e_r' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'p_e' ;
  8 , 'name' , 'p_f' ;
  9 , 'name' , 'p_r' ;
  10 , 'name' , 'mrk' ;
  11 , 'name' , '11' ;
  12 , 'name' , '12' ;
  13 , 'name' , '13' ;
  14 , 'name' , 'c' ;
  15 , 'name' , 'omega' ;
  16 , 'name' , 'T' ;
};
M_.mapping.k.eqidx = [1 6 ];
M_.mapping.k_g.eqidx = [2 6 10 ];
M_.mapping.k_f.eqidx = [4 6 11 ];
M_.mapping.k_r.eqidx = [5 6 12 ];
M_.mapping.e.eqidx = [2 3 7 8 9 ];
M_.mapping.e_f.eqidx = [3 4 11 16 ];
M_.mapping.e_r.eqidx = [3 5 12 ];
M_.mapping.p_e.eqidx = [7 11 12 ];
M_.mapping.p_f.eqidx = [8 ];
M_.mapping.p_r.eqidx = [9 ];
M_.mapping.c.eqidx = [13 14 ];
M_.mapping.i.eqidx = [1 14 ];
M_.mapping.y.eqidx = [2 7 8 9 10 14 ];
M_.mapping.mrk.eqidx = [10 11 12 13 ];
M_.mapping.omega.eqidx = [2 15 ];
M_.mapping.T.eqidx = [15 16 ];
M_.mapping.a.eqidx = [2 ];
M_.mapping.g.eqidx = [15 ];
M_.mapping.theta.eqidx = [5 ];
M_.mapping.tau.eqidx = [9 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 3 4 16 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(16, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(7, 1);
M_.endo_trends = struct('deflator', cell(16, 1), 'log_deflator', cell(16, 1), 'growth_factor', cell(16, 1), 'log_growth_factor', cell(16, 1));
M_.NNZDerivatives = [53; -1; -1; ];
M_.static_tmp_nbr = [3; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(5) = 0.1;
delta = M_.params(5);
M_.params(1) = 0.3;
alpha = M_.params(1);
M_.params(2) = 0.1;
alpha_e = M_.params(2);
M_.params(3) = 0.96;
beta = M_.params(3);
M_.params(4) = 4;
gamma = M_.params(4);
M_.params(6) = 0.01;
kappa_omega = M_.params(6);
M_.params(7) = 0.9;
rho_T = M_.params(7);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.exo_steady_state(3) = 0;
oo_.steady_state(2) = 0.6;
oo_.steady_state(3) = 0.1;
oo_.steady_state(4) = 0.1;
oo_.steady_state(6) = oo_.steady_state(3)^M_.params(1);
oo_.steady_state(7) = oo_.steady_state(3)^M_.params(1);
oo_.steady_state(5) = oo_.steady_state(6)+oo_.steady_state(7);
oo_.steady_state(1) = oo_.steady_state(3)+oo_.steady_state(2)+oo_.steady_state(4);
oo_.steady_state(12) = M_.params(5)*oo_.steady_state(1);
oo_.steady_state(11) = oo_.steady_state(13)-oo_.steady_state(12);
oo_.steady_state(13) = oo_.steady_state(2)^M_.params(1)*oo_.steady_state(5)^M_.params(2);
oo_.steady_state(8) = oo_.steady_state(13)*M_.params(2)/oo_.steady_state(5);
oo_.steady_state(9) = oo_.steady_state(8);
oo_.steady_state(10) = oo_.steady_state(8);
oo_.steady_state(14) = 1/M_.params(3)-(1-M_.params(5));
oo_.steady_state(16) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
resid;
%
% ENDVAL instructions
%
ys0_= oo_.steady_state;
ex0_ = oo_.exo_steady_state;
oo_.exo_steady_state(4) = 0.6;
oo_.exo_steady_state(2) = 1;
steady;
options_.periods = 400;
perfect_foresight_setup;
perfect_foresight_solver;
var_list_ = {'p_e';'p_r'};
rplot(var_list_);
var_list_ = {'y';'c'};
rplot(var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'model_4_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_4_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_4_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_4_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_4_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_4_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_4_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
