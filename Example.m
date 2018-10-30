%% Qias: Unit conversion with Matlab
% Modification of conversion tables can be done in any CSV editor. Default
% files are in the "Graphs" folder.
%
% Mustafa Al Ibrahim @ 2018
% Mustafa.Geoscientist@outlook.com

%% Class operations

qs = Qias();
properties = qs.getProperties();
units = qs.getUnits('Distance');
value = qs.convert(5, 'm', 'in', 'Distance')

%% Static

graphFileName = 'C:\Users\malibrah\Documents\GitHub\Qias\Graphs\Distance.csv';
Graph = Qias.graphLoad(graphFileName);
units = Qias.graphUnits(Graph);
value = qs.graphConvert(5, 'm', 'in', Graph)


