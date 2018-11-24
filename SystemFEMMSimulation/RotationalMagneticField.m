%% Rotational Magnetic Field Simulation

% No actual Z axis

%% Steel Cyl

sphere_radius = 2.54/2;
current = 1;

% D is the diameter of the steel cyl
D = sphere_radius*2 ;

% Material Type
Sphere_Mat_Type = '416 Stainless Steel' ; 

%% Electromagnets

airgap = 0.03;

c_w = 0.5;

w = 0.5*D;
l = 2*w;

% Turn number
N = 780;

ElectroCoil_Mat_Type = '22 AWG' ; 
ElectroCore_Mat_Type = 'Pure Iron' ;

%% Problem Globals

meshSize = 1;


%% Problem Definition

openfemm;


%Define progblem, open files

newdocument(0); % New electosatics doc
%Not sure what the frequency param is, but it has to be 0
mi_probdef(0, 'centimeters','planar',1e-8,1,-30,0);

% Materials

mi_getmaterial('Air');
mi_getmaterial(ElectroCoil_Mat_Type);
mi_getmaterial(ElectroCore_Mat_Type);
mi_getmaterial(Sphere_Mat_Type);

theta = pi/4; 

%% Circuit for Electromagnets

circuitName = 'AIn';

mi_addcircprop(circuitName, current * cos(theta), 1);

circuitName = 'AOut';

mi_addcircprop(circuitName, -current * cos(theta), 1);

circuitName = 'BIn';

mi_addcircprop(circuitName, -current * cos(theta + pi/2), 1);

circuitName = 'BOut';

mi_addcircprop(circuitName, current * cos(theta + pi/2), 1);


%% Create Cyl at origin

%note - first param must be lower than first to draw arc right

sphere_group = 1;

mi_drawarc(0,sphere_radius,0,-sphere_radius,180,1) ;
mi_drawarc(0,-sphere_radius,0,sphere_radius,180,1) ;
mi_addblocklabel(0,0);
mi_selectlabel(0,0) ;
mi_setblockprop(Sphere_Mat_Type, 1, meshSize, '', 0, sphere_group,N);
mi_clearselected();
%Select the arc and seg, change to block prop

mi_selectarcsegment(sphere_radius,0);
mi_selectarcsegment(-sphere_radius,0);
mi_setgroup(sphere_group);
mi_clearselected();

%% Create Electromagnets

coreVectors = [airgap+sphere_radius,w/2;airgap+sphere_radius+l,w/2; airgap+sphere_radius+l,-w/2; airgap+sphere_radius,-w/2];
centerVectors = [airgap+sphere_radius + l/2, 0] ;
centerVectorOne = [airgap+sphere_radius + l/2, w/2+c_w/2] ;
coilVectorsOne = [airgap+sphere_radius,w/2;airgap+sphere_radius+l,w/2; airgap+sphere_radius+l,w/2+c_w; airgap+sphere_radius,w/2+c_w];
centerVectorTwo = [airgap+sphere_radius + l/2, -w/2-c_w/2] ;
coilVectorsTwo = [airgap+sphere_radius,-w/2;airgap+sphere_radius+l,-w/2; airgap+sphere_radius+l,-w/2-c_w; airgap+sphere_radius,-w/2-c_w];

theta = -pi/2;
rotationMatrix = [cos(theta), -sin(theta); sin(theta), cos(theta)]; 
core_group = 2;
coil_group = 3; 

currentNames = {'AIn','AOut';...
                'BOut','BIn';...
                'AOut','AIn';...
                'BIn','BOut'} ;

for k = 1:4

%Draw Core and Jacket
mi_drawpolygon(coreVectors);
mi_addblocklabel(centerVectors);
mi_selectlabel(centerVectors) ;
mi_setblockprop(ElectroCore_Mat_Type, 1, meshSize, '', 0, core_group,0); 
mi_clearselected();

%Draw Coil One
mi_drawpolygon(coilVectorsOne);
mi_addblocklabel(centerVectorOne);
mi_selectlabel(centerVectorOne) ;
mi_setblockprop(ElectroCoil_Mat_Type, 1, meshSize, cell2mat(currentNames(k,1)), 0, coil_group,N);
mi_clearselected();

%Draw Coil Two
mi_drawpolygon(coilVectorsTwo);
mi_addblocklabel(centerVectorTwo);
mi_selectlabel(centerVectorTwo) ;
mi_setblockprop(ElectroCoil_Mat_Type, 1, meshSize, cell2mat(currentNames(k,2)), 0, coil_group,N);
mi_clearselected();

coreVectors = coreVectors * rotationMatrix; 
centerVectors = centerVectors * rotationMatrix;

coilVectorsOne = coilVectorsOne * rotationMatrix; 
centerVectorOne = centerVectorOne * rotationMatrix; 

coilVectorsTwo = coilVectorsTwo * rotationMatrix; 
centerVectorTwo = centerVectorTwo * rotationMatrix; 


end

%% Flux Return path

outerPath = [sphere_radius+airgap+l+w,-w/2-c_w; sphere_radius+airgap+l+w, w/2+c_w];
innerPath = [sphere_radius+airgap+l,-w/2-c_w; sphere_radius+airgap+l, w/2+c_w];
innerArc = [sphere_radius+airgap+l, w/2+c_w ; w/2+c_w,sphere_radius+airgap+l];
outerArc = [sphere_radius+airgap+l+w, w/2+c_w; w/2+c_w, sphere_radius+airgap+l+w];

theta = pi/2;
rotationMatrix = [cos(theta), -sin(theta); sin(theta), cos(theta)]; 

for k = 1:4
    mi_drawline(innerPath(1,1),innerPath(1,2),innerPath(2,1),innerPath(2,2)) ;
    mi_drawline(outerPath(1,1),outerPath(1,2),outerPath(2,1),outerPath(2,2)) ;
    mi_drawarc(innerArc(1,1),innerArc(1,2),innerArc(2,1),innerArc(2,2),90,1) ;
    mi_drawarc(outerArc(1,1),outerArc(1,2),outerArc(2,1),outerArc(2,2),90,1) ;
    
    
    outerPath = outerPath * rotationMatrix;
    innerPath = innerPath * rotationMatrix; 
    innerArc = innerArc * rotationMatrix; 
    outerArc = outerArc * rotationMatrix; 
end

mi_addblocklabel(sphere_radius+airgap+l+w/2,0);
mi_selectlabel(sphere_radius+airgap+l+w/2,0) ;
mi_setblockprop(ElectroCore_Mat_Type, 1, meshSize, '', 0, core_group,0); 
mi_clearselected();


%% Boundary Cond and Air

r = sphere_radius * 4;  

if (r < 4) 
    r = 4;
end

mi_addblocklabel(sphere_radius*3.9,sphere_radius*3.9);
mi_selectlabel(sphere_radius*3.9,sphere_radius*3.9) ;
mi_setblockprop('Air', 1, meshSize, '', 0, 0,0); 

mi_addblocklabel(sphere_radius*1.1,sphere_radius*1.1);
mi_selectlabel(sphere_radius*1.1,sphere_radius*1.1) ;
mi_setblockprop('Air', 1, meshSize, '', 0, 0,0); 


mi_clearselected();

mi_drawarc(0,-r*2,0,r*2,180,5);
mi_drawarc(0,r*2,0,-r*2,180,5);

mi_saveas('GeneratedProblem.FEM');

error = 0 ;
