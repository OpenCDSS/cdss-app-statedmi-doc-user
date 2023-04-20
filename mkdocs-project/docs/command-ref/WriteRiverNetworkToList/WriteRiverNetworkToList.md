# StateDMI / Command / WriteRiverNetworkToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteRiverNetworkToList` command (for StateMod)
writes river network data to a delimited file.
It is often more useful to write lists of individual station types.
Consequently, see commands like
[`WriteDiversionStationsToList`](../WriteDiversionStationsToList/WriteDiversionStationsToList.md).

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteRiverNetworkToList command editor](WriteRiverNetworkToList.png)
</p>**

**<p style="text-align: center;">
`WriteRiverNetworkToList` Command Editor (<a href="../WriteRiverNetworkToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteRiverNetworkToList(Parameter="Value",...)
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

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteRiverNetworkToList).

The following example illustrates how to create a list of river network nodes from a network file:

```
ReadNetworkFromStateMod(InputFile="cm2005.net")
CreateRiverNetworkFromNetwork()
WriteRiverNetworkToList(OutputFile="cm2005.rin.csv")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadRiverNetworkFromStateMod`](../ReadRiverNetworkFromStateMod/ReadRiverNetworkFromStateMod.md) command
* [`WriteDiversionStationsToList`](../WriteDiversionStationsToList/WriteDiversionStationsToList.md) command
* [`WriteRiverNetworkToStateMod`](../WriteRiverNetworkToStateMod/WriteRiverNetworkToStateMod.md) command
