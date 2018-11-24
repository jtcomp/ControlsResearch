%Find the equilibrium point using newton's method (easy and
%expensive,whatever)

function current = FindSphereEQPoint(...
sphere_radius,...
sphere_z,...
error_margin...
) 

current = 2.9; % initial guess
deltaCurrent = 0.0001;

forceArray = [];

% generate initial problem
error = Jacketless_ElectromagnetSphereGenerator(current,sphere_radius,sphere_z);

if (error ~= 0)
    return 
end

force = ForceSolver(1) ;

%try to approx using newtons method 
%%x_n+1 = x_n - f(x_n) / f '(x_n)
while (abs(force) > error_margin) 
    
  Jacketless_ElectromagnetSphereGenerator(current+deltaCurrent,sphere_radius,sphere_z) ;
  fPrime = (ForceSolver(1) - force)/deltaCurrent ; 
  forceArray = [forceArray force];
  
  Jacketless_ElectromagnetSphereGenerator(current,sphere_radius,sphere_z);
  force = ForceSolver(1) ;  
  
  current = current - force  / fPrime ; 
    
end 



end