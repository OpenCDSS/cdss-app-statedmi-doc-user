# StateDMI / Command / SetStreamEstimateStation #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetStreamEstimateStation` command (for StateMod)
sets data in existing stream estimate stations or adds a new stream estimate station.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetStreamEstimateStation command editor](SetStreamEstimateStation.png)
</p>**

**<p style="text-align: center;">
`SetStreamEstimateStation` Command Editor (<a href="../SetStreamEstimateStation.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetStreamEstimateStation(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID`<br>**required** | A single stream estimate station identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `Name` | The name to be assigned for all matching stream estimate stations. | If not specified, the original value will remain. |
| `RiverNodeID` | The river node identifier to be assigned for all matching stream estimate stations. | If not specified, the original value will remain. |
| `DailyID` | The daily identifier to be assigned for all matching stream estimate stations. | If not specified, the original value will remain. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Add` – add the stream estimate station if the ID is not matched and is not a wildcard</li><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetStreamEstimateStation).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`FillStreamEstimateStation`](../FillStreamEstimateStation/FillStreamEstimateStation.md) command
* [`FillStreamEstimateStationsFromHydroBase`](../FillStreamEstimateStationsFromHydroBase/FillStreamEstimateStationsFromHydroBase.md) command
* [`FillStreamEstimateStationsFromNetwork`](../FillStreamEstimateStationsFromNetwork/FillStreamEstimateStationsFromNetwork.md) command
