
// Check if a user specifies function or not
fun = [];
x0 = [1,1,1,1,1,1];
intcon=[1,2,3,4,5,6];

// --error 10000 
// fot_intfminunc: Expected type ["function"] for input argument fun at input #1, but got "constant" instead.
// at line      56 of function Checktype called by :  
// at line     135 of function fot_intfminunc called by :  
// [x,fval] =fot_intfminunc(fun ,x0 ,intcon)
// at line       7 of exec file called by :    
// exec intfminuc_f.sce

[x,fval] =fot_intfminunc([] ,x0 ,intcon)
