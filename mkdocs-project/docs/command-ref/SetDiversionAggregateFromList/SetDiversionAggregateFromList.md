# StateDMI / Command / SetDiversionAggregateFromList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetDiversionAggregateFromList` command (for StateCU and StateMod) sets
diversion aggregate part identifier data for a diversion:

* a CU Location that corresponds to a diversion or D&W node
* or a StateMod diversion station

Diversion aggregates are specified using a list of ditch identifiers,
and the aggregation information applies for the full model period (does not vary by year).
To facilitate processing, the list of parts is specified in a delimited list file.
Aggregates by convention have their water rights grouped into classes.
To represent all water rights at a location, use a system (see the similar
[`SetDiversionSystemFromList`](../SetDiversionSystemFromList/SetDiversionSystemFromList.md) commands).
See also the StateDMI Introduction chapter, which provides additional information
about aggregates and other modeling conventions.
Aggregate information should be specified after diversion locations are defined and
before their use in other processing, such as reading data from HydroBase.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetDiversionAggregateFromList command editor](SetDiversionAggregateFromList.png)
</p>**

**<p style="text-align: center;">
`SetDiversionAggregateFromList` Command Editor (<a href="../SetDiversionAggregateFromList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetDiversionAggregateFromList(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ListFile`| The name of the input file to read, surrounded by double quotes. | None – must be specified. |
| `IDCol`| The column number (1+) containing the aggregate diversion identifiers. | None – must be specified. |
| `NameCol`| The column number (1+) containing the aggregate diversion name. | None – optional (name will remain as previously defined). |
| `PartIDsCol`| The column number (1+) for the first column having part identifiers.  The identifiers are ditch WDIDs that will be found in HydroBase.  The part identifiers are by default of type Ditch. | None – must be specified. |
| `PartsListedHow`| If `InRow`, it is expected that all parts defining an aggregate are listed in the same row (as shown in the example below).  If `InColumn`, it is expected that the parts defining an aggregate are listed one per row, with multiple rows defining the full aggregate (`PartIDsColMax` is ignored in this case). | None – must be specified. |
| `PartIDsColMax`| The column number (1+) for the last column having part identifiers.  Use if extra columns on the right need to be excluded from the list. | Use all available non-blank columns starting with `PartIDsCol`. |
| `IfNotFound`| Used for error handling, one of the following: <ul><li>`Fail` – generate a failure message if the aggregate identifier is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the aggregate identifier is not matched</li><li>`Warn` – generate a warning message if the aggregate identifier is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetDiversionAggregateFromList).

An example list file is shown below:

```
51_ADC001,Colorado River nr Granby,510580,510663,510703,510704,510707,510833,510841,510974,511032,511033,511048
51_ADC002,Willow Creek,510742,510818,510819,510847,510920,510930,510962
51_ADC003,Ranch Creek,510513,510568,510606,510681,510708,510727,510767
...
```

The following command file illustrates how diversion aggregates are defined with this command
and how the aggregate classes are specified when reading diversion rights from HydroBase:

```
# ddr.commands.StateDMI
#
#  StateDMI command file to create the direct diversion rights file for the Colorado model
#
#  Step 1 - read structures from preliminary direct diversion station file
#
ReadDiversionStationsFromStateMod(InputFile="cm2005_dds.dds")
#
#  Step 2 - read aggregate and diversion system structure assignments.  Note that
#        want to combine water rights for aggs and diversion systems, but
#        water rights are assigned to primary and secondary components of multistructures
#
SetDiversionAggregateFromList(ListFile="cm_agg.csv",IDCol=1,NameCol=2,PartIDsCol=3,
  PartsListedHow=InRow)
SetDiversionSystemFromList(ListFile="cm_divsys.csv",IDCol=1,NameCol=2,PartIDsCol=3,
  PartsListedHow=InRow)
#
#  Step 3 - read diversion rights from HydroBase and define water rights classes
#           used for aggregate structures - but NOT for diversion systems
#
ReadDiversionRightsFromHydroBase(ID="*",OnOffDefault=1,
  AdminNumClasses="14854.00000,20427.18999,22729.21241,30895.21241,31258.00000,
  32023.28989,39095.38998,43621.42906,46674.00000,48966.00000,99999.")
#
#  Step 4 - set water rights for structure IDs different from or not included in HydroBase
#
# Grand Valley Area - many rights obtain water through operations
SetDiversionRight(ID="720646.02",Name="Orchard Mesa Irr Dist Sys",StationID="ID",OnOff=1,IfNotFound=Add,IfFound=Set)
SetDiversionRight(ID="720646.03",Name="Orchard Mesa Irr Dist Sys",StationID="ID",OnOff=1,IfNotFound=Add,IfFound=Set)
SetDiversionRight(ID="720646.05",Name="USA Power Plant",StationID="ID",Decree=800.0,OnOff=1,IfNotFound=Add,IfFound=Set)
SetDiversionRight(ID="720646.07",Name="Grand Valley Proj",StationID="ID",AdministrationNumber=22729.19544,Decree=40.0,OnOff=1,
  IfNotFound=Add,IfFound=Set)
… commands omitted
#
#  Step 7 - create direct diverison rights file
#
WriteDiversionRightsToStateMod(OutputFile="cm2005.ddr")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`SetDiversionAggregate`](../SetDiversionAggregate/SetDiversionAggregate.md) command
* [`SetDiversionMultiStruct`](../SetDiversionMultiStruct/SetDiversionMultiStruct.md) command
* [`SetDiversionMultiStructFromList`](../SetDiversionMultiStructFromList/SetDiversionMultiStructFromList.md) command
* [`SetDiversionSystem`](../SetDiversionSystem/SetDiversionSystem.md) command
* [`SetDiversionSystemFromList`](../SetDiversionSystemFromList/SetDiversionSystemFromList.md) command
