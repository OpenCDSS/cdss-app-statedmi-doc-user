# StateDMI / Command / ReadInstreamFlowDemandTSAverageMonthlyFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadInstreamFlowDemandTSAverageMonthlyFromStateMod` command (for StateMod)
reads instream flow demand time series (average monthly)
from a StateMod instream flow demand time series (average monthly) file.
The instream flow demand time series can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadInstreamFlowDemandTSAverageMonthlyFromStateMod](ReadInstreamFlowDemandTSAverageMonthlyFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadInstreamFlowDemandTSAverageMonthlyFromStateMod` Command Editor (<a href="../ReadInstreamFlowDemandTSAverageMonthlyFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadInstreamFlowDemandTSAverageMonthlyFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the StateMod instream flow demand time series (average monthly) file to be read. | None – must be specified. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadInstreamFlowDemandTSAverageMonthlyFromStateMod).

## Troubleshooting ##

## See Also ##

* [`WriteInstreamFlowDemandTSAverageMonthlyToStateMod`](../WriteInstreamFlowDemandTSAverageMonthlyToStateMod/WriteInstreamFlowDemandTSAverageMonthlyToStateMod.md) command
