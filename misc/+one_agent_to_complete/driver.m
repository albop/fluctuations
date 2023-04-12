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
M_.fname = 'one_agent_to_complete';
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
M_.exo_names(1) = {'e_y'};
M_.exo_names_tex(1) = {'e\_y'};
M_.exo_names_long(1) = {'e_y'};
M_.endo_names = cell(3,1);
M_.endo_names_tex = cell(3,1);
M_.endo_names_long = cell(3,1);
M_.endo_names(1) = {'y'};
M_.endo_names_tex(1) = {'y'};
M_.endo_names_long(1) = {'y'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'c'};
M_.endo_names_long(2) = {'c'};
M_.endo_names(3) = {'b'};
M_.endo_names_tex(3) = {'b'};
M_.endo_names_long(3) = {'b'};
M_.endo_partitions = struct();
M_.param_names = cell(14,1);
M_.param_names_tex = cell(14,1);
M_.param_names_long = cell(14,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'r'};
M_.param_names_tex(2) = {'r'};
M_.param_names_long(2) = {'r'};
M_.param_names(3) = {'q'};
M_.param_names_tex(3) = {'q'};
M_.param_names_long(3) = {'q'};
M_.param_names(4) = {'db'};
M_.param_names_tex(4) = {'db'};
M_.param_names_long(4) = {'db'};
M_.param_names(5) = {'sigma'};
M_.param_names_tex(5) = {'sigma'};
M_.param_names_long(5) = {'sigma'};
M_.param_names(6) = {'rho'};
M_.param_names_tex(6) = {'rho'};
M_.param_names_long(6) = {'rho'};
M_.param_names(7) = {'eta'};
M_.param_names_tex(7) = {'eta'};
M_.param_names_long(7) = {'eta'};
M_.param_names(8) = {'phi'};
M_.param_names_tex(8) = {'phi'};
M_.param_names_long(8) = {'phi'};
M_.param_names(9) = {'zbar'};
M_.param_names_tex(9) = {'zbar'};
M_.param_names_long(9) = {'zbar'};
M_.param_names(10) = {'ybar'};
M_.param_names_tex(10) = {'ybar'};
M_.param_names_long(10) = {'ybar'};
M_.param_names(11) = {'bbar'};
M_.param_names_tex(11) = {'bbar'};
M_.param_names_long(11) = {'bbar'};
M_.param_names(12) = {'cbar'};
M_.param_names_tex(12) = {'cbar'};
M_.param_names_long(12) = {'cbar'};
M_.param_names(13) = {'chi'};
M_.param_names_tex(13) = {'chi'};
M_.param_names_long(13) = {'chi'};
M_.param_names(14) = {'sig_z'};
M_.param_names_tex(14) = {'sig\_z'};
M_.param_names_long(14) = {'sig_z'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 3;
M_.param_nbr = 14;
M_.orig_endo_nbr = 3;
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
M_.nonzero_hessian_eqs = 3;
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 3;
M_.eq_nbr = 3;
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
 0 2 0;
 0 3 5;
 1 4 0;]';
M_.nstatic = 1;
M_.nfwrd   = 1;
M_.npred   = 1;
M_.nboth   = 0;
M_.nsfwrd   = 1;
M_.nspred   = 1;
M_.ndynamic   = 2;
M_.dynamic_tmp_nbr = [0; 2; 1; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'y' ;
  2 , 'name' , 'c' ;
  3 , 'name' , '3' ;
};
M_.mapping.y.eqidx = [1 2 ];
M_.mapping.c.eqidx = [2 3 ];
M_.mapping.b.eqidx = [2 ];
M_.mapping.e_y.eqidx = [1 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [3 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(3, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(14, 1);
M_.endo_trends = struct('deflator', cell(3, 1), 'log_deflator', cell(3, 1), 'growth_factor', cell(3, 1), 'log_growth_factor', cell(3, 1));
M_.NNZDerivatives = [8; 4; -1; ];
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(14) = 0.01;
sig_z = M_.params(14);
M_.params(2) = 1.04;
r = M_.params(2);
M_.params(5) = 0.5;
sigma = M_.params(5);
M_.params(3) = 1/M_.params(2);
q = M_.params(3);
M_.params(10) = 1.0;
ybar = M_.params(10);
M_.params(11) = 0.0;
bbar = M_.params(11);
M_.params(12) = M_.params(10)+M_.params(11)*(1-M_.params(3));
cbar = M_.params(12);
M_.params(7) = 0.6;
eta = M_.params(7);
M_.params(8) = 0.05;
phi = M_.params(8);
M_.params(1) = 1/M_.params(2);
beta = M_.params(1);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(14))^2;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.order = 2;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'one_agent_to_complete_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'one_agent_to_complete_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'one_agent_to_complete_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'one_agent_to_complete_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'one_agent_to_complete_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'one_agent_to_complete_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'one_agent_to_complete_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
