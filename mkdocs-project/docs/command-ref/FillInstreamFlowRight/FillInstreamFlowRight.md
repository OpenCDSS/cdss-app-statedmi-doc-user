# StateDMI / Command / FillInstreamFlowRight #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `FillInstreamFlowRight` command (for StateMod)
fills missing data in existing instream flow rights.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![FillInstreamFlowRight](FillInstreamFlowRight.png)
</p>**

**<p style="text-align: center;">
`FillInstreamFlowRight` Command Editor (<a href="../FillInstreamFlowRight.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
FillInstreamFlowRight(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | A single instream flow right identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `Name` | The name to be assigned for all matching instream flow right identifiers with missing name. | If not specified, the original value will remain. |
| `StationID` | The instream flow station identifier to be assigned for all matching instream flow right identifiers with missing instream flow station identifier. | If not specified, the original value will remain. |
| `AdministrationNumber` | The administration number to be assigned for all matching instream flow right identifiers with missing administration number. | If not specified, the original value will remain. |
| `Decree` | The water right decree to be assigned for all matching instream flow right identifiers with missing administration decree. | If not specified, the original value will remain. |
| `OnOff` | The on/off switch to be assigned for all matching instream flow right identifiers with missing on/off switch, either `1` for on or `0` for off, a positive 4-digit year to turn the right on starting in the year, or a negative 4-digit year to turn the right off starting in the year. | If not specified, the original value will remain. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/FillInstreamFlowRight).

## Troubleshooting ##

## See Also ##

* [`SetInstreamFlowRight`](../SetInstreamFlowRight/SetInstreamFlowRight.md) command
