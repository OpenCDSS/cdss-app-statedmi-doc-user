# StateDMI / Command / CheckWellHistoricalPumpingTSMonthly #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `CheckWellHistoricalPumpingTSMonthly` command (for StateCU and StateMod)
checks well historical pumping monthly time series for problems.  The command should usually be used with a
[`WriteCheckFile`](../WriteCheckFile/WriteCheckFile.md) command at the end of a command file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![CheckWellHistoricalPumpingTSMonthly](CheckWellHistoricalPumpingTSMonthly.png)
</p>**

**<p style="text-align: center;">
`CheckWellHistoricalPumpingTSMonthly` Command Editor (<a href="../CheckWellHistoricalPumpingTSMonthly.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
CheckWellHistoricalPumpingTSMonthly(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | The identifier for the location(s) to check.  Use `*` to match a pattern. | None – must be specified. |
| `IfNotFound` | One of the following:<ul><li>`Fail` – generate a failure message if the location identifier is not matched</li><li>`Ignore` – ignore (don’t generate a message) if the location identifier is not matched</li><li>`Warn` – generate a warning message if the location identifier is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/CheckWellHistoricalPumpingTSMonthly).

The following excerpt from a command file illustrates how well historical pumping time series can be checked and written to a StateMod file:

```
#
#  Create well pumping file
#
WriteWellHistoricalPumpingTSMonthlyToStateMod(OutputFile="..\STATEMOD\rg2007.weh")
#
# Check the results
CheckWellHistoricalPumpingTSMonthly(ID="*")
WriteCheckFile(OutputFile="weh.commands.StateDMI.check.html")
```

## Troubleshooting ##

## See Also ##

* [`WriteCheckFile`](../WriteCheckFile/WriteCheckFile.md) command
