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
% Qias operations
qs = Qias();
qs.getProperties()
qs.getUnits('Distance')
[valueUnitTo, multiplier] = qs.convert(1, 'm', 'in', 'Distance')





