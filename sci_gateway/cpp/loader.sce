// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
if ~win64() then
  warning(_("This module requires a Windows x64 platform."));
  return
end
//
FOSSEE_Optimization_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('FOSSEE_Optimization_Toolbox');
if bOK then
  ulink(ilib);
end
//
list_functions = [ 'linearprog';
                   'rmps';
                   'quadprog_CLP';
                   'solveqp';
                   'solveminuncp';
                   'solveminbndp';
                   'solveminconp';
                   'matintlinprog';
                   'mpsintlinprog';
                   'solveintqp';
                   'inter_fminunc';
                   'inter_fminbnd';
                   'inter_fmincon';
                   'fotversion';
];
addinter(FOSSEE_Optimization_path + filesep() + 'FOSSEE_Optimization_Toolbox' + getdynlibext(), 'FOSSEE_Optimization_Toolbox', list_functions);
// remove temp. variables on stack
clear FOSSEE_Optimization_path;
clear bOK;
clear ilib;
clear list_functions;
// ----------------------------------------------------------------------------
