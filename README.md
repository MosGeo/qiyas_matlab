# Qias
Unit Conversion in Matlab with the ability to quickly add new units. The code is based on graph theory to determine the relationships between units. Because of this, only one conversion factor need to be provided for each new unit. The code can relate to other units automatically.

## Usage
Here is an example of usage. First, the Qias object is loaded. Next, optionally, the available physical properties are printed. Next, optionally, the units for one physical property is printed. Finally, the Qias object is used to convert from one unit to another.

qs = Qias();
qs.getProperties()
qs.getUnits('Time')
[valueUnitTo, multiplier] = qs.convert(2, 'm', 'in', 'Distance')

## Reference
I would love to hear from you if you are using this code in your work. My email is Mustafa.Geoscientist@outlook.com. I would also appreciate a reference to this Github repository if the code is used in your research. 
