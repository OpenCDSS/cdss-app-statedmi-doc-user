# StateDMI / Command / SetDiversionRight #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetDiversionRight` command (for StateCU and StateMod)
sets data in existing diversion rights or adds a new diversion right.  If a new right is added, it is added in alphabetical order according to the right identifier.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetDiversionRight](SetDiversionRight.png)
</p>**

**<p style="text-align: center;">
`SetDiversionRight` Command Editor (<a href="../SetDiversionRight.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetDiversionRight(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID`<br>**required** | A single diversion right identifier to match or a pattern using wildcards (e.g., `20*)`. | None – must be specified. |
| `Name` | The name to be assigned for all matching diversion rights. | If not specified, the original value will remain. |
| `StationID` | The diversion station identifier to be assigned for all matching diversion rights. | If not specified, the original value will remain. |
| `AdministrationNumber` | The administration number to be assigned for all matching diversion rights. | If not specified, the original value will remain. |
| `Decree` | The water right decree to be assigned for all matching diversion rights. | If not specified, the original value will remain. |
| `OnOff` | The on/off switch value to be assigned for all matching diversion rights, either 1 for on or 0 for off, a positive 4-digit year to turn the right on starting in the year, or a negative 4-digit year to turn the right off starting in the year. | If not specified, the original value will remain. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Add` – add the water right if the ID is not matched and is not a wildcard</li><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li><ul> | `Warn` |
| `IfFound` | Used for error handling, one of the following:<ul><li>`Set` – set the water right data</li><li>`Fail` – generate a failure message if the ID is matched</li><li>`Ignore` – ignore (don’t set and don’t generate a message) if the ID is matched</li><li>`Warn` – generate a warning message if the ID is matched</li><ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetDiversionRight).

## Troubleshooting ##

## See Also ##

* [`FillDiversionRight`](../FillDiversionRight/FillDiversionRight.md) command
