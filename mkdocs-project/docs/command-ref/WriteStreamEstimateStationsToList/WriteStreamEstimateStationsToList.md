# StateDMI / Command / WriteStreamEstimateStationsToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteStreamEstimateStationsToList` command (for StateMod)
writes stream estimate stations data to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteStreamEstimateStationsToList](WriteStreamEstimateStationsToList.png)
</p>**

**<p style="text-align: center;">
`WriteStreamEstimateStationsToList` Command Editor (<a href="../WriteStreamEstimateStationsToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteStreamEstimateStationsToList(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |
| `Delimiter` | The delimiter character to use between columns. `,` (comma) |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteStreamEstimateStationsToList).

The following example illustrates how to create a list of stream estimate stations from a network file:

```
ReadStreamEstimateStationsFromNetwork(InputFile="rgTW.net")
WriteStreamEstimateStationsToList(OutputFile="rgTW.ses.csv")
```

## Troubleshooting ##

## See Also ##

* [`ReadStreamEstimateStationsFromStateMod`](../ReadStreamEstimateStationsFromStateMod/ReadStreamEstimateStationsFromStateMod.md) command
* [`WriteStreamEstimateStationsToStateMod`](../WriteStreamEstimateStationsToStateMod/WriteStreamEstimateStationsToStateMod.md) command
