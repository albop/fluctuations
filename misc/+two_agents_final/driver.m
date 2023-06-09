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
M_.fname = 'two_agents_final';
M_.dynare_version = '5.2';
oo_.dynare_version = '5.2';
options_.dynare_version = '5.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'e_y'};
M_.exo_names_tex(1) = {'e\_y'};
M_.exo_names_long(1) = {'e_y'};
M_.exo_names(2) = {'e_z'};
M_.exo_names_tex(2) = {'e\_z'};
M_.exo_names_long(2) = {'e_z'};
M_.endo_names = cell(9,1);
M_.endo_names_tex = cell(9,1);
M_.endo_names_long = cell(9,1);
M_.endo_names(1) = {'y'};
M_.endo_names_tex(1) = {'y'};
M_.endo_names_long(1) = {'y'};
M_.endo_names(2) = {'z'};
M_.endo_names_tex(2) = {'z'};
M_.endo_names_long(2) = {'z'};
M_.endo_names(3) = {'c_t'};
M_.endo_names_tex(3) = {'c\_t'};
M_.endo_names_long(3) = {'c_t'};
M_.endo_names(4) = {'c_b'};
M_.endo_names_tex(4) = {'c\_b'};
M_.endo_names_long(4) = {'c_b'};
M_.endo_names(5) = {'b_t'};
M_.endo_names_tex(5) = {'b\_t'};
M_.endo_names_long(5) = {'b_t'};
M_.endo_names(6) = {'b_b'};
M_.endo_names_tex(6) = {'b\_b'};
M_.endo_names_long(6) = {'b_b'};
M_.endo_names(7) = {'B'};
M_.endo_names_tex(7) = {'B'};
M_.endo_names_long(7) = {'B'};
M_.endo_names(8) = {'q'};
M_.endo_names_tex(8) = {'q'};
M_.endo_names_long(8) = {'q'};
M_.endo_names(9) = {'r'};
M_.endo_names_tex(9) = {'r'};
M_.endo_names_long(9) = {'r'};
M_.endo_partitions = struct();
M_.param_names = cell(16,1);
M_.param_names_tex = cell(16,1);
M_.param_names_long = cell(16,1);
M_.param_names(1) = {'beta_t'};
M_.param_names_tex(1) = {'beta\_t'};
M_.param_names_long(1) = {'beta_t'};
M_.param_names(2) = {'beta_b'};
M_.param_names_tex(2) = {'beta\_b'};
M_.param_names_long(2) = {'beta_b'};
M_.param_names(3) = {'rbar'};
M_.param_names_tex(3) = {'rbar'};
M_.param_names_long(3) = {'rbar'};
M_.param_names(4) = {'sigma'};
M_.param_names_tex(4) = {'sigma'};
M_.param_names_long(4) = {'sigma'};
M_.param_names(5) = {'rho_y'};
M_.param_names_tex(5) = {'rho\_y'};
M_.param_names_long(5) = {'rho_y'};
M_.param_names(6) = {'rho_z'};
M_.param_names_tex(6) = {'rho\_z'};
M_.param_names_long(6) = {'rho_z'};
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
M_.param_names(11) = {'Bbar'};
M_.param_names_tex(11) = {'Bbar'};
M_.param_names_long(11) = {'Bbar'};
M_.param_names(12) = {'c_t_bar'};
M_.param_names_tex(12) = {'c\_t\_bar'};
M_.param_names_long(12) = {'c_t_bar'};
M_.param_names(13) = {'c_b_bar'};
M_.param_names_tex(13) = {'c\_b\_bar'};
M_.param_names_long(13) = {'c_b_bar'};
M_.param_names(14) = {'chi'};
M_.param_names_tex(14) = {'chi'};
M_.param_names_long(14) = {'chi'};
M_.param_names(15) = {'sig_y'};
M_.param_names_tex(15) = {'sig\_y'};
M_.param_names_long(15) = {'sig_y'};
M_.param_names(16) = {'sig_z'};
M_.param_names_tex(16) = {'sig\_z'};
M_.param_names_long(16) = {'sig_z'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 9;
M_.param_nbr = 16;
M_.orig_endo_nbr = 9;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
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
 1 5 0;
 2 6 0;
 0 7 14;
 0 8 15;
 3 9 0;
 4 10 0;
 0 11 0;
 0 12 0;
 0 13 0;]';
M_.nstatic = 3;
M_.nfwrd   = 2;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 4;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [3; 3; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'y' ;
  2 , 'name' , 'z' ;
  3 , 'name' , 'b_t' ;
  4 , 'name' , 'b_b' ;
  5 , 'name' , 'c_t' ;
  6 , 'name' , 'q' ;
  7 , 'name' , 'c_b' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'r' ;
};
M_.mapping.y.eqidx = [1 5 7 ];
M_.mapping.z.eqidx = [2 5 7 ];
M_.mapping.c_t.eqidx = [5 6 ];
M_.mapping.c_b.eqidx = [7 8 ];
M_.mapping.b_t.eqidx = [3 5 6 ];
M_.mapping.b_b.eqidx = [4 7 ];
M_.mapping.B.eqidx = [3 4 ];
M_.mapping.q.eqidx = [5 6 7 8 9 ];
M_.mapping.r.eqidx = [9 ];
M_.mapping.e_y.eqidx = [1 ];
M_.mapping.e_z.eqidx = [2 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 5 6 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(9, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(16, 1);
M_.endo_trends = struct('deflator', cell(9, 1), 'log_deflator', cell(9, 1), 'growth_factor', cell(9, 1), 'log_growth_factor', cell(9, 1));
M_.NNZDerivatives = [31; -1; -1; ];
M_.static_tmp_nbr = [2; 1; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(3) = 1.04;
rbar = M_.params(3);
M_.params(4) = 0.5;
sigma = M_.params(4);
M_.params(14) = 0.05;
chi = M_.params(14);
M_.params(9) = 0.1807;
zbar = M_.params(9);
lev = 0.91;    
M_.params(10) = 1;
ybar = M_.params(10);
M_.params(11) = lev;
Bbar = M_.params(11);
M_.params(5) = 0.9;
rho_y = M_.params(5);
M_.params(6) = 1.0;
rho_z = M_.params(6);
M_.params(12) = M_.params(10)*M_.params(9)/M_.params(14)+M_.params(11)/M_.params(14)*(1-1/M_.params(3));
c_t_bar = M_.params(12);
M_.params(13) = M_.params(10)*(1-M_.params(9))/(1-M_.params(14))-(1-1/M_.params(3))*M_.params(11)/(1-M_.params(14));
c_b_bar = M_.params(13);
M_.params(7) = 0.6;
eta = M_.params(7);
M_.params(8) = 0.05;
phi = M_.params(8);
M_.params(1) = 1/M_.params(3)-M_.params(8)*(1+M_.params(11)/M_.params(14)/M_.params(3))^((-1)/M_.params(7))/M_.params(12)^((-1)/M_.params(4));
beta_t = M_.params(1);
M_.params(2) = 1/M_.params(3);
beta_b = M_.params(2);
M_.params(15) = 0.01;
sig_y = M_.params(15);
M_.params(16) = 0.1;
sig_z = M_.params(16);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(15))^2;
M_.Sigma_e(2, 2) = (M_.params(16))^2;
resid;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 200;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'two_agents_final_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'two_agents_final_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'two_agents_final_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'two_agents_final_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'two_agents_final_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'two_agents_final_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'two_agents_final_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
