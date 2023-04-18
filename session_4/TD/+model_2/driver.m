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
M_.fname = 'model_2';
M_.dynare_version = '5.2';
oo_.dynare_version = '5.2';
options_.dynare_version = '5.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'a'};
M_.exo_names_tex(1) = {'a'};
M_.exo_names_long(1) = {'a'};
M_.endo_names = cell(9,1);
M_.endo_names_tex = cell(9,1);
M_.endo_names_long = cell(9,1);
M_.endo_names(1) = {'k'};
M_.endo_names_tex(1) = {'k'};
M_.endo_names_long(1) = {'k'};
M_.endo_names(2) = {'k_g'};
M_.endo_names_tex(2) = {'k\_g'};
M_.endo_names_long(2) = {'k_g'};
M_.endo_names(3) = {'k_e'};
M_.endo_names_tex(3) = {'k\_e'};
M_.endo_names_long(3) = {'k_e'};
M_.endo_names(4) = {'e'};
M_.endo_names_tex(4) = {'e'};
M_.endo_names_long(4) = {'e'};
M_.endo_names(5) = {'p_e'};
M_.endo_names_tex(5) = {'p\_e'};
M_.endo_names_long(5) = {'p_e'};
M_.endo_names(6) = {'c'};
M_.endo_names_tex(6) = {'c'};
M_.endo_names_long(6) = {'c'};
M_.endo_names(7) = {'i'};
M_.endo_names_tex(7) = {'i'};
M_.endo_names_long(7) = {'i'};
M_.endo_names(8) = {'y'};
M_.endo_names_tex(8) = {'y'};
M_.endo_names_long(8) = {'y'};
M_.endo_names(9) = {'mrk'};
M_.endo_names_tex(9) = {'mrk'};
M_.endo_names_long(9) = {'mrk'};
M_.endo_partitions = struct();
M_.param_names = cell(5,1);
M_.param_names_tex = cell(5,1);
M_.param_names_long = cell(5,1);
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
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 9;
M_.param_nbr = 5;
M_.orig_endo_nbr = 9;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
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
M_.nonzero_hessian_eqs = [2 3 5 6 7 8];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 9;
M_.eq_nbr = 9;
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
 1 4 0;
 2 5 0;
 3 6 0;
 0 7 0;
 0 8 0;
 0 9 13;
 0 10 0;
 0 11 0;
 0 12 14;]';
M_.nstatic = 4;
M_.nfwrd   = 2;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 3;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [3; 4; 1; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'k' ;
  2 , 'name' , 'y' ;
  3 , 'name' , 'e' ;
  4 , 'name' , '4' ;
  5 , 'name' , 'p_e' ;
  6 , 'name' , 'mrk' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'c' ;
};
M_.mapping.k.eqidx = [1 4 ];
M_.mapping.k_g.eqidx = [2 4 6 ];
M_.mapping.k_e.eqidx = [3 4 7 ];
M_.mapping.e.eqidx = [2 3 5 7 ];
M_.mapping.p_e.eqidx = [5 7 ];
M_.mapping.c.eqidx = [8 9 ];
M_.mapping.i.eqidx = [1 9 ];
M_.mapping.y.eqidx = [2 5 6 9 ];
M_.mapping.mrk.eqidx = [6 7 8 ];
M_.mapping.a.eqidx = [2 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 3 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(9, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(5, 1);
M_.endo_trends = struct('deflator', cell(9, 1), 'log_deflator', cell(9, 1), 'growth_factor', cell(9, 1), 'log_growth_factor', cell(9, 1));
M_.NNZDerivatives = [28; 31; -1; ];
M_.static_tmp_nbr = [2; 0; 0; 0; ];
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
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(2) = 0.9;
oo_.steady_state(3) = 0.1;
oo_.steady_state(1) = oo_.steady_state(2)+oo_.steady_state(3);
oo_.steady_state(7) = M_.params(5)*oo_.steady_state(1);
oo_.steady_state(6) = oo_.steady_state(8)-oo_.steady_state(7);
oo_.steady_state(5) = oo_.steady_state(8)*M_.params(2)/oo_.steady_state(4);
oo_.steady_state(4) = oo_.steady_state(3)^M_.params(1);
oo_.steady_state(8) = oo_.steady_state(1)^M_.params(1);
oo_.steady_state(9) = 1/M_.params(3)-(1-M_.params(5));
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
resid;
%
% SHOCKS instructions
%
M_.det_shocks = [ M_.det_shocks;
struct('exo_det',0,'exo_id',1,'multiplicative',0,'periods',1:10,'value',0.0) ];
M_.exo_det_length = 0;
steady;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'model_2_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_2_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_2_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_2_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_2_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_2_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_2_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
