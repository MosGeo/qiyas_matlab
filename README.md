# Qias
Unit Conversion in Matlab with the ability to quickly add new units. The code is based on graph theory to determine the relationships between units. Because of this, only one conversion factor need to be provided for each new unit. The code can relate to other units automatically.

# Why a library for a simple things such as units?
Units can be annoying to handle in code. I had a couple of objectives:
- Reusability: a code that I can use in multiple projects.
- Extendibility: new units can be added easily without modifying the code.

## Usage
Here is an example of usage. Check the example file for more information.

```
qs = Qias();
[valueUnitTo, multiplier, property] = qs.convert(2, 'm', 'in')
```

## How to add new units
The “Graph” folder contain CSV files with some already available units. You can create new CSV files for new physical properties. In each CSV file, new units can be added and they only need to be defined based on one unit.

## Behind the scene
Graph theory is used to determine the relationship between any two units. For example, meters and feet can be defined in CSV file. Next, feet and yard relationship is defined. The algorithm uses the shortest path to automatically figure out the relationship between meter and yard. Here is an example of the input CSV file and the relationships that can be built from it automatically (right).

<div align="center">
    <img width=1000 src="https://github.com/MosGeo/ParticlePack/blob/master/ReadmeFiles/Process.png" alt="Process" title="Particle Generation Process"</img>
</div>

## Reference
I would love to hear from you if you are using this code in your work. My email is Mustafa.Geoscientist@outlook.com.
