# StateDMI / Command / FillInstreamFlowStationsFromHydroBase #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `FillInstreamFlowStationsFromHydroBase` command (for StateMod)
fills missing data in existing instream flow stations, using HydroBase for data.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![FillInstreamFlowStationsFromHydroBase](FillInstreamFlowStationsFromHydroBase.png)
</p>**

**<p style="text-align: center;">
`FillInstreamFlowStationsFromHydroBase` Command Editor (<a href="../FillInstreamFlowStationsFromHydroBase.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
FillInstreamFlowStationsFromHydroBase(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | A single instream flow station identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/FillInstreamFlowStationsFromHydroBase).

## Troubleshooting ##

## See Also ##

* [`FillInstreamFlowStation`](../FillInstreamFlowStation/FillInstreamFlowStation.md) command
* [`FillInstreamFlowStationsFromNetwork`](../FillInstreamFlowStationsFromNetwork/FillInstreamFlowStationsFromNetwork.md) command
* [`SetInstreamFlowStation`](../SetInstreamFlowStation/SetInstreamFlowStation.md) command
