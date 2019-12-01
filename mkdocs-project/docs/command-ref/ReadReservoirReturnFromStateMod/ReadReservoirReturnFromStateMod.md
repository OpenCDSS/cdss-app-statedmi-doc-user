# StateDMI / Command / ReadReservoirReturnFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadReservoirReturnFromStateMod` command (from StateMod)
reads a list of reservoir return flow data from a StateMod reservoir return flow data file.
The data can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadReservoirReturnFromStateMod](ReadReservoirReturnFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadReservoirReturnFromStateMod` Command Editor (<a href="../ReadReservoirReturnFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadReservoirReturnFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the StateMod reservoir return flow file to read. | None – must be specified. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadReservoirReturnFromStateMod).

## Troubleshooting ##

## See Also ##

* [`WriteReservoirReturnFlowToStateMod`](../WriteReservoirReturnFlowToStateMod/WriteReservoirReturnFlowToStateMod.md) command
