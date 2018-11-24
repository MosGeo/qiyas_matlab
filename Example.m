%% Qias: Unit conversion with Matlab
% Modification of conversion tables can be done in any CSV editor. Default
% files are in the "Graphs" folder.
%
% Mustafa Al Ibrahim @ 2018
% Mustafa.Geoscientist@outlook.com

%% Class operations

% Recommended to switch assert off to increase efficiency (do that after
% testing the functions and making sure your workflow works). switchAssert
% is part of the Matlab Debugging Toolbox (https://github.com/MosGeo/MatlabDebug)

% switchAssert(false)

% =========================
%% Object loading

% Qias load with optimization (useful performance improvment if you have a 
% very large number of units or you are calling the convert function a very 
% large number of times.
qs = Qias(true); 

% Qias load without optimization
qs = Qias();

%% Study the loaded units

% Get the physical properties
qs.getProperties()

% Get all the units in the system
qs.getUnits()

% Get the units for a specific property
qs.getUnits('Time')

%% Conversion

% Convert without specifying the property
[valueUnitTo, multiplier, property] = qs.convert(2, 'm', 'ft')

% Convert by explicitly specifying the property  
[valueUnitTo, multiplier] = qs.convert(2, 'm', 'in', 'Distance')

% Get multiplier
[multiplier, property, pathUsed] = qs.getMultiplier('m', 'ft', 'Distance')
[multiplier, property, pathUsed] = qs.getMultiplier('m', 'ft')

%% Extra

% Plot the graph associated with a property
qs.plot('Time')

% Optimize (similar to load with optimization) and than graph again
qs.optimize();
qs.plot('Time')








