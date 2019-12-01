# StateDMI / Command / FillCULocationsFromHydroBase #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `FillCULocationsFromHydroBase` command (for StateCU)
fills missing data in existing CU Locations, using HydroBase for data.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![FillCULocationsFromHydroBase](FillCULocationsFromHydroBase.png)
</p>**

**<p style="text-align: center;">
`FillCULocationsFromHydroBase` Command Editor (<a href="../FillCULocationsFromHydroBase.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
FillCULocationsFromHydroBase(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | A single CU Location identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `CULocType` | Indicates whether CU Locations are structures or climate stations, to indicate which HydroBase data to query. | `Structure` |
| `Region1Type` | The meaning of `Region1` in the data set, to indicate which HydroBase data to query. | `County` |
| `Region2Type` | The meaning of `Region2` in the data set, to indicate which HydroBase data to query. | `HUC` |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Fail` – generate a failure message if the ID pattern is not matched</li><li>`Ignore` – ignore (don’t generate a message) if the ID pattern is not matched</li><li>`Warn` – generate a warning message if the ID pattern is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/FillCULocationsFromHydroBase).

## Troubleshooting ##

## See Also ##

* [`FillCULocation`](../FillCULocation/FillCULocation.md) command
* [`FillCULocationsFromList`](../FillCULocationsFromList/FillCULocationsFromList.md) command
* [`SetCULocation`](../SetCULocation/SetCULocation.md) command
* [`SetCULocationsFromHydroBase`](../SetCULocationsFromHydroBase/SetCULocationsFromHydroBase.md) command
* [`SetCULocationsFromList`](../SetCULocationsFroMList/SetCULocationsFromList.md) command
