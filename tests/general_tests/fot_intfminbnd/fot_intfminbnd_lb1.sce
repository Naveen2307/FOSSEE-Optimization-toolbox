function y=fun(x)
y=0
for i =1:6
y=y+sin(x(i));
end
endfunction
x1 = [];
x2 = [6,6,6,6,6,6];
options=list("MaxIter", [1500], "CpuTime", [500],"TolX",[1e-6]);
intcon=1:6

[xopt,fopt,exitflag,output,lambda] = fot_intfminbnd (fun, intcon, x1, x2, options);
//  !--error 10000 
// fot_intfminbnd: x1 cannot be an empty
// at line     150 of function fot_intfminbnd called by :  
// [xopt,fopt,exitflag,output,lambda] = fot_intfminbnd (fun, intcon, x1, x2, options);
// at line      12 of exec file called by :    
// fot_intfminbnd_lb1.sce