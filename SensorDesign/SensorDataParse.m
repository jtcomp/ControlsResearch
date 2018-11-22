%%Sensor Testing and Data Parsing
% Huerisitic determination of sensor linear range
% Ideally, VCC > RL × ICC




% Load data
load('PhototransistorArraySensor.mat');

%% 300 Ohm

figure;

x = ThreeHundredOhmPhotoArray(:,3);
y = ThreeHundredOhmPhotoArray(:,4) ./ ThreeHundredOhmPhotoArray(:,1); %Normalize voltage values

dy=diff(y)./diff(x);

plot(x,y);
xlabel('Position');

hold on;

plot(x(2:end),dy);
xlabel('Position');

legend('300 Ohm','300 Ohm dy/dx');

hold off;
figure;

%% 900 Ohm

x = NineHundredOhmPhotoArray(:,3);
y = NineHundredOhmPhotoArray(:,4) ./ NineHundredOhmPhotoArray(:,1); %Normalize voltage values

dy=diff(y)./diff(x);

plot(x,y);
xlabel('Position');

hold on;

plot(x(2:end),dy);
xlabel('Position');

legend('900 Ohm','900 Ohm dy/dx');

hold off;




save('PhototransistorArraySensor.mat','NineHundredOhmPhotoArray','ThreeHundredOhmPhotoArray') ; 


