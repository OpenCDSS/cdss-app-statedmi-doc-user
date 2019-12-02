# StateDMI / Command / WriteDelayTablesMonthlyToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteDelayTablesMonthlyToList` command (for StateMod)
writes monthly delay tables that have been defined to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteDelayTablesMonthlyToList](WriteDelayTablesMonthlyToList.png)
</p>**

**<p style="text-align: center;">
`WriteDelayTablesMonthlyToList` Command Editor (<a href="../WriteDelayTablesMonthlyToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteDelayTablesMonthlyToList(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `Delimiter` | The character used to delimit columns in the file. | `,` (comma) |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteDelayTablesMonthlyToList).

## Troubleshooting ##

## See Also ##

* [`ReadDelayTablesMonthlyFromStateMod`](../ReadDelayTablesMonthlyFromStateMod/ReadDelayTablesMonthlyFromStateMod.md) command
* [`WriteDelayTablesMonthlyToStateMod`](../WriteDelayTablesMonthlyToStateMod/WriteDelayTablesMonthlyToStateMod.md) command
