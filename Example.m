%% Qias: Unit conversion with Matlab
% Modification of conversion tables can be done in any CSV editor. Default
% files are in the "Graphs" folder.
%
% Mustafa Al Ibrahim @ 2018
% Mustafa.Geoscientist@outlook.com

%% Class operations

qs = Qias(true);
qs.getProperties()
units = qs.getUnits('Distance')
[valueUnitTo, multiplier] = qs.convert(5, 'm', 'in', 'Distance')

%% Static

graphFileName = 'C:\Users\malibrah\Documents\GitHub\Qias\Graphs\Distance.csv';
Graph = Qias.graphLoad(graphFileName);
Graph = Qias.graphOptimize(Graph)
Qias.graphPlot(Graph)
units = Qias.graphUnits(Graph);
value = Qias.graphConvert(5, 'm', 'in', Graph)





