# StateDMI / Command / WriteDelayTablesMonthlyToStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteDelayTablesMonthlyToStateMod` command (from StateMod).
writes monthly delay tables that have been defined to a StateMod delay tables file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteDelayTablesMonthlyToStateMod command editor](WriteDelayTablesMonthlyToStateMod.png)
</p>**

**<p style="text-align: center;">
`WriteDelayTablesMonthlyToStateMod` Command Editor (<a href="../WriteDelayTablesMonthlyToStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteDelayTablesMonthlyToStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write, surrounded by double quotes. | None – must be specified. |
| `Precision` | The number of digits after the decimal point for data values. | `2` |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteDelayTablesMonthlyToStateMod).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadDelayTablesMonthlyFromStateMod`](../ReadDelayTablesMonthlyFromStateMod/ReadDelayTablesMonthlyFromStateMod.md) command
* [`WriteDelayTablesMonthlyToList`](../WriteDelayTablesMonthlyToList/WriteDelayTablesMonthlyToList.md) command
