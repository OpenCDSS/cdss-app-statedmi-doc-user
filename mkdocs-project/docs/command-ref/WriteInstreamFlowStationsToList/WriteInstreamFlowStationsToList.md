# StateDMI / Command / WriteInstreamFlowStationsToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteInstreamFlowStationsToList` command (for StateMod)
writes instream flow stations data to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteInstreamFlowStationsToList command editor](WriteInstreamFlowStationsToList.png)
</p>**

**<p style="text-align: center;">
`WriteInstreamFlowStationsToList` Command Editor (<a href="../WriteInstreamFlowStationsToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteInstreamFlowStationsToList(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write, surrounded by double quotes. | None – must be specified. |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |
| `Delimiter` | The delimiter character to use between columns. | `,` (comma) |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteInstreamFlowStationsToList).

The following example illustrates how to create a list of instream flow stations from a network file:

```
ReadInstreamFlowStationsFromNetwork(InputFile="cm2005.net")
WriteInstreamFlowStationsToList(OutputFile="cm2005.ifs.csv”)
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadInstreamFlowStationsFromStateMod`](../ReadInstreamFlowStationsFromStateMod/ReadInstreamFlowStationsFromStateMod.md) command
* [`WriteInstreamFlowStationsToStateMod`](../WriteInstreamFlowStationsToStateMod/WriteInstreamFlowStationsToStateMod.md) command
