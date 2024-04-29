%% house keeping
clear all;
%% Run file 

dynare Smets_Wouters_2007_45 

%% fevd transformationable
var_names = oo_.var_list;
shock_names = (M_.exo_names)';
T = array2table(oo_.variance_decomposition, 'VariableNames', shock_names, 'RowNames', var_names);

shock_names = {'Preference', 'Supply', 'Monetary Policy'}
T_fevd = array2table([T.eb+T.eg T.ea+T.eqs T.em],'VariableNames', shock_names, 'RowNames', var_names); 

T_fevd
