# StateDMI / Command / ReadReservoirRightsFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadReservoirRightsFromStateMod` command (for StateMod)
reads reservoir rights from a StateMod reservoir rights file.
The reservoir rights can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadReservoirRightsFromStateMod](ReadReservoirRightsFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadReservoirRightsFromStateMod` Command Editor (<a href="../ReadReservoirRightsFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadReservoirRightsFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the StateMod reservoir rights file to read. | None – must be specified. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadReservoirRightsFromStateMod).

## Troubleshooting ##

## See Also ##

* [`ReadReservoirRightsFromHydroBase`](../ReadReservoirRightsFromHydroBase/ReadReservoirRightsFromHydroBase.md) command
* [`WriteReservoirRightsToStateMod`](../WriteReservoirRightsToStateMod/WriteReservoirRightsToStateMod.md) command
