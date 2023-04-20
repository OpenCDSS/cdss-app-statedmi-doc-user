# StateDMI / Command / SetReservoirRight #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetReservoirRight` command (for StateMod)
sets data in existing reservoir rights or adds a new reservoir right.
If a new right is added, it is added in alphabetical order according to the right identifier.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetReservoirRight command editor](SetReservoirRight.png)
</p>**

**<p style="text-align: center;">
`SetReservoirRight` Command Editor (<a href="../SetReservoirRight.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetReservoirRight(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | A single reservoir right identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `Name` | The name to be assigned for all matching reservoir rights. | If not specified, the original value will remain. |
| `StationID` | The reservoir station identifier to be assigned for all matching reservoir rights. | If not specified, the original value will remain. |
| `AdministrationNumber` | The administration number to be assigned for all matching reservoir rights. | If not specified, the original value will remain. |
| `Decree` | The water right decree to be assigned for all matching reservoir rights. | If not specified, the original value will remain. |
| `OnOff` | The on/off switch value to be assigned for all matching reservoir rights, either `1` for on or `0` for off, a positive 4-digit year to turn the right on starting in the year, or a negative 4-digit year to turn the right off starting in the year. | If not specified, the original value will remain. |
| `AccountDist` | The account distribution option to be assigned for all matching reservoir rights (see StateMod documentation). | If not specified, the original value will remain. |
| `RightType` | The reservoir right type to be assigned for all matching reservoir rights (see StateMod documentation). | If not specified, the original value will remain. |
| `FillType` | The reservoir right fill type to be assigned for all matching reservoir rights (see StateMod documentation). | If not specified, the original value will remain. |
| `OpRightID` | The out-of-priority associated operational right (see StateMod documentation). | If not specified, the original value will remain. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Add` – add the reservoir right if the ID is not matched and is not a wildcard</li><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li></ul> | Warn |
| `IfFound` | Used for error handling, one of the following:<ul><li>`Set` – set the reservoir right if the ID is matched</li><li>`Fail` – generate a failure message if the ID is matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is matched</li><li>`Warn` – generate a warning message if the ID is matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetReservoirRight).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`FillWellRight`](../FillWellRight/FillWellRight.md) command
