# StateDMI / Command / WriteWellStationsToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteWellStationsToList` command (for StateMod)
writes well stations data to a delimited file.  In addition to the main station file,
files with suffixes `_Collections`, `_Depletions`, and `_ReturnFlows` are written, containing secondary station information.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteWellStationsToList command editor](WriteWellStationsToList.png)
</p>**

**<p style="text-align: center;">
`WriteWellStationsToList` Command Editor (<a href="../WriteWellStationsToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteWellStationsToList(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |
| `Delimiter` | The delimiter character to use between columns. | `,` (comma) |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteWellStationsToList).

The following example illustrates how to create a list of well stations from a network file:

```
ReadWellStationsFromNetwork(InputFile="rgtw.net")
WriteWellStationsToList(OutputFile="rgtw.wes.csv")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadWellStationsFromStateMod`](../ReadWellStationsFromStateMod/ReadWellStationsFromStateMod.md) command
* [`WriteWellStationsToStateMod`](../WriteWellStationsToStateMod/WriteWellStationsToStateMod.md) command
