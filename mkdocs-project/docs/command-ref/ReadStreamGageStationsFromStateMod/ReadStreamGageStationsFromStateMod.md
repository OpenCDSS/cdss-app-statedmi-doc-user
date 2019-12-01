# StateDMI / Command / ReadStreamGageStationsFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadStreamGageStationsFromStateMod` command (from StateMod)
reads a list of stream gage stations from a StateMod stream gage
stations file and defines stream gage stations in memory.
The stream gage stations can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadStreamGageStationsFromStateMod](ReadStreamGageStationsFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadStreamGageStationsFromStateMod` Command Editor (<a href="../ReadStreamGageStationsFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadStreamGageStationsFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the StateMod stream gage stations file to be read. | None – must be specified. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadStreamGageStationsFromStateMod).

## Troubleshooting ##

## See Also ##

* [`ReadStreamGageStationsFromList`](../ReadStreamGageStationsFromList/ReadStreamGageStationsFromList.md) command
* [`ReadStreamGageStationsFromNetwork`](../ReadStreamGageStationsFromNetwork/ReadStreamGageStationsFromNetwork.md) command
* [`WriteStreamGageStationsToStateMod`](../WriteStreamGageStationsToStateMod/WriteStreamGageStationsToStateMod.md) command
