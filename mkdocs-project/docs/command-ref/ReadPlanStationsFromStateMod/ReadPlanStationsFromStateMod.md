# StateDMI / Command / ReadPlanStationsFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadPlanStationsFromStateMod` command (for StateMod)
reads a list of plan stations from a StateMod plan stations file and defines plan stations in memory.
The plan stations can then be manipulated and output with other commands.
Comments immediately prior to a plan’s data records are associated with the
plan and will be output when the plan stations are written with a
[`WritePlanStationsToStateMod`](../WritePlanStationsToStateMod/WritePlanStationsToStateMod.md) command.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadPlanStationsFromStateMod command editor](ReadPlanStationsFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadPlanStationsFromStateMod` Command Editor (<a href="../ReadPlanStationsFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadPlanStationsFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the StateMod plan stations file to read. | None – must be specified. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadPlanStationsFromStateMod).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`WritePlanStationsToStateMod`](../WritePlanStationsToStateMod/WritePlanStationsToStateMod.md) command
