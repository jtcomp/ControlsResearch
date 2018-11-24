% Model System off of paper here: https://ieeexplore-ieee-org.ezproxy.library.wisc.edu/abstract/document/572325/
% DOI 10.1109/13.572325

% All metrics are in metric standard kg/m/etc..

% Updated to use 28 AWG copper, lowering current requirements and enabling
% ~1800 turns

function error = ElectromagnetSphereGenerator(...
current,...
sphere_radius,...
sphere_z...
)

if (sphere_z > 0) 
   error = 1; 
   return;
end

if (sphere_radius < 0) 
   error = 1; 
   return;
end

if (current < 0) 
   error = 1; 
   return;
end

%% Steel Ball Def
% Most optimaztions are based off of steel ball size
% Thus, these sizes are usually inches

% D is the diameter of the steel ball
D = sphere_radius*2 ;

% Material Type
Sphere_Mat_Type = '416 Stainless Steel' ; 


%% Electromagnet Def (using params as described in paper)

delta = 0.8*D; 
w = 0.5*D;
t = 0.1*D;
h = 2*w;

% Turn number
N = 780;

ElectroCoil_Mat_Type = '22 AWG' ; 
ElectroCore_Mat_Type = '1006 Steel' ;


%% Problem Globals

meshSize = 1;


%% Problem Definition

openfemm;


%Define progblem, open files

newdocument(0); % New electosatics doc
%Not sure what the frequency param is, but it has to be 0
mi_probdef(0, 'centimeters','axi',1e-8,0,-30,0);

% Materials

mi_getmaterial('Air');
mi_getmaterial(ElectroCoil_Mat_Type);
mi_getmaterial(ElectroCore_Mat_Type);
mi_getmaterial(Sphere_Mat_Type);

%% Circuit for Electromagnet

circuitName = 'ElectromagnetCircuit';

mi_addcircprop(circuitName, current, 1);

%% Create Sphere - top is sphere_z below origin

%note - first param must be lower than first to draw arc right

sphere_group = 1;

mi_drawarc(0,-sphere_radius*2+sphere_z,0,sphere_z,180,1) ;
mi_addsegment(0,-sphere_radius*2+sphere_z,0,sphere_z);
mi_addblocklabel(sphere_radius/2,sphere_z-sphere_radius);
mi_selectlabel(sphere_radius/2,sphere_z-sphere_radius) ;
mi_setblockprop(Sphere_Mat_Type, 1, meshSize, '', 0, sphere_group,N);
mi_clearselected();
%Select the arc and seg, change to block prop

mi_selectarcsegment(0,-sphere_radius*2+sphere_z);
mi_selectsegment(0,-sphere_radius*2+sphere_z);
mi_setgroup(sphere_group);
mi_clearselected();

%% Create Electromagnet

core_group = 2;
coil_group = 3;

%Draw Core and Jacket
mi_drawpolygon([0,0;
    delta/2,0;
    delta/2,h;
    delta/2+w,h;
    delta/2+w,0;
    delta/2+w+t,0;
    delta/2+w+t,h+t;
    0,h+t;
]);

mi_addblocklabel(delta/4,h/2);
mi_selectlabel(delta/4,h/2) ;
mi_setblockprop(ElectroCore_Mat_Type, 1, meshSize, '', 0, core_group,0); 
mi_clearselected();

%Draw Coils
mi_drawrectangle(delta/2,0,delta/2+w,h);
mi_addblocklabel(delta/2+w/2,h/2);
mi_selectlabel(delta/2+w/2,h/2) ;
mi_setblockprop(ElectroCoil_Mat_Type, 1, meshSize, circuitName, 0, coil_group,N);
mi_clearselected();

%% Boundary Cond and Air



r = sphere_radius * 4;  

if (r < 4) 
    r = 4;
end

mi_addblocklabel(sphere_radius/2,sphere_z/2);
mi_selectlabel(sphere_radius/2,sphere_z/2) ;
mi_setblockprop('Air', 1, meshSize, '', 0, 0,0); 
mi_clearselected();

mi_drawarc(0,-r*2,0,r*2,180,5);
mi_drawline(0,-r*2,0,r*2);

mi_saveas('GeneratedProblem.FEM');

error = 0 ;

end