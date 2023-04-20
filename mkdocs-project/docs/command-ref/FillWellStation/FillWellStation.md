# StateDMI / Command / FillWellStation #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `FillWellStation` command (for StateMod) fills missing data in existing well stations.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![FillWellStation comand editor](FillWellStation.png)
</p>**

**<p style="text-align: center;">
`FillWellStation` Command Editor (<a href="../FillWellStation.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
FillWellStation(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | A single well station identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `Name` | The name to be assigned for all matching well stations with missing name. | If not specified, the original value will remain. |
| `RiverNodeID` | The river node identifier to be assigned for all matching well stations with missing river node identifier.  Specify ID to assign to the well station identifier. | If not specified, the original value will remain. |
| `OnOff` | The on/off switch value to be assigned for all matching well stations with missing switch, either `1` for on or `0` for off. | If not specified, the original value will remain. |
| `Capacity` | The well station capacity to be assigned for all matching well stations with missing capacity, CFS. | If not specified, the original value will remain. |
| `DailyID` | The daily identifier to be assigned for all matching well stations with missing daily identifier or use ID to use the station identifier. | If not specified, the original value will remain. |
| `AdminNumShift` | The administration number shift to be assigned to water rights for all matching well stations with missing value.  See the “primary” flag in the StateMod well station documentation. | If not specified, the original value will remain. |
| `DiversionID` | For all matching well stations, the diversion station identifier associated with the well station.  Typically, where well water supplements surface supply, one well station is assigned to the diversion station.  Specify ID to assign to the well station identifier. | If not specified, the original value will remain. |
| `DemandType` | The demand type to be assigned for all matching well stations with missing demand type (see StateMod documentation). | If not specified, the original value will remain. |
| `IrrigatedAcres` | The irrigated acres to be assigned for all matching well stations with missing irrigated acres. | If not specified, the original value will remain. |
| `UseType` | The use type to be assigned for all matching well stations with missing user type (see StateMod documentation). | If not specified, the original value will remain. |
| `DemandSource` | The demand source to be assigned for all matching well stations with missing demand source (see StateMod documentation). | If not specified, the original value will remain. |
| `EffAnnual` | The annual efficiency (percent, 0  - 100) to be assigned for all matching well stations with missing annual efficiency (see StateMod documentation).  Monthly efficiencies will be set to the same value (but not used). | If not specified, the original value will remain. |
| `EffMonthly` | The monthly efficiencies  (percent, 0 – 100) to be assigned for all matching well stations with missing values, specified as 12 comma-separated values, January to December.  The annual efficiency will be set to the average value.  The order of the values in the output file will be according to the output year type set by [`SetOutputYearType`](../SetOutputYearType/SetOutputYearType.md), or calendar by default. | If not specified, the original value will remain. |
| `Returns` | The return flows to be assigned for all matching well stations with missing returns.  Specify as `StationID,Percent,DelayTableID;StationID,Percent,DelayTableID;` etc. | If not specified, the original value will remain. |
| `Depletions` | The depletions to be assigned for all matching well stations with missing depletions.  Specify as `StationID,Percent,DelayTableID;StationID,Percent,DelayTableID;` etc. | If not specified, the original value will remain. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/FillWellStation).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`FillWellStationsFromDiversionStations`](../FillWellStationsFromDiversionStations/FillWellStationsFromDiversionStations.md) command
* [`FillWellStationsFromNetwork`](../FillWellStationsFromNetwork/FillWellStationsFromNetwork.md) command
* [`SetWellStation`](../SetWellStation/SetWellStation.md) command
* [`SetWellStationAreaToCropPatternTS`](../SetWellStationAreaToCropPatternTS/SetWellStationAreaToCropPatternTS.md) command
* [`SetWellStationCapacitiesFromTS`](../SetWellStationCapacitiesFromTS/SetWellStationCapacitiesFromTS.md) command
* [`SetWellStationCapacityToWellRights`](../SetWellStationCapacityToWellRights/SetWellStationCapacityToWellRights.md) command
* [`SetWellStationDelayTablesFromNetwork`](../SetWellStationDelayTablesFromNetwork/SetWellStationDelayTablesFromNetwork.md) command
* [`SetWellStationDelayTablesFromRTN`](../SetWellStationDelayTablesFromRTN/SetWellStationDelayTablesFromRTN.md) command
* [`SetWellStationDepletionTablesFromRTN`](../SetWellStationDepletionTablesFromRTN/SetWellStationDepletionTablesFromRTN.md) command
* [`SetWellStationsFromList`](../SetWellStationsFromList/SetWellStationsFromList.md) command
