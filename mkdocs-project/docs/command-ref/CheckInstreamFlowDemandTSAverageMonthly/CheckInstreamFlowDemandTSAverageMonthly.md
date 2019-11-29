# StateDMI / Command / CheckInstreamFlowDemandTSAverageMonthly #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `CheckInstreamFlowDemandTSAverageMonthly` command (for StateMod) checks
instream flow demand time series (average monthly) data for problems.  The command should usually be used with a
[`WriteCheckFile`](../WriteCheckFile/WriteCheckFile.md) command at the end of a command file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![CheckInstreamFlowDemandTSAverageMonthly](CheckInstreamFlowDemandTSAverageMonthly.png)
</p>**

**<p style="text-align: center;">
`CheckInstreamFlowDemandTSAverageMonthly` Command Editor (<a href="../CheckInstreamFlowDemandTSAverageMonthly.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
CheckInstreamFlowDemandTSAverageMonthly(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | The identifier for the location(s) to check.  Use `*` to match a pattern. | None – must be specified. |
| `IfNotFound` | One of the following:<ul><li>`Fail` – generate a failure message if the location identifier is not matched</li><li>`Ignore` – ignore (don’t generate a message) if the location identifier is not matched</li><li>`Warn` – generate a warning message if the location identifier is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/CheckInstreamFlowDemandTSAverageMonthly).

The following excerpt from a command file illustrates how instream flow demand time series can be checked and written to a StateMod file:

```
#
#  Create instream demand time series file
#
WriteInstreamFlowDemandTSAverageMonthlyToStateMod(OutputFile="..\STATEMOD\cm2005.ifa")
#
# Check the results
CheckInstreamFlowDemandTSAverageMonthly(ID="*")
WriteCheckFile(OutputFile="ifa.commands.StateDMI.check.html")
```

## Troubleshooting ##

## See Also ##

* [`WriteCheckFile`](../WriteCheckFile/WriteCheckFile.md) command
