# StateDMI / Command / WriteDelayTablesDailyToStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteDelayTablesDailyToStateMod` command (for StateMod)
writes daily delay tables that have been defined to a StateMod delay tables file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteDelayTablesDailyToStateMod](WriteDelayTablesDailyToStateMod.png)
</p>**

**<p style="text-align: center;">
`WriteDelayTablesDailyToStateMod` Command Editor (<a href="../WriteDelayTablesDailyToStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteDelayTablesDailyToStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `Precision` | The number of digits after the decimal point for data values. | `2` |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteDelayTablesDailyToStateMod).

## Troubleshooting ##

## See Also ##

* [`ReadDelayTablesDailyFromList`](../ReadDelayTablesDailyFromList/ReadDelayTablesDailyFromList.md) command
* [`WriteDelayTablesDailyToStateMod`](../WriteDelayTablesDailyToStateMod/WriteDelayTablesDailyToStateMod.md) command
