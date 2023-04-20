# StateDMI / Command / WriteInstreamFlowRightsToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteInstreamFlowRightsToList` command (for StateMod)
writes instream flow rights data to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteInstreamFlowRightsToList command editor](WriteInstreamFlowRightsToList.png)
</p>**

**<p style="text-align: center;">
`WriteInstreamFlowRightsToList` Command Editor (<a href="../WriteInstreamFlowRightsToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteInstreamFlowRightsToList(Parameter="Value",...)
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

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteInstreamFlowRightsToList).

The following example illustrates how to create a list of instream flow rights from a list of stations:

```
ReadInstreamFlowStationsFromList(ListFile="cm2005.ifs.csv")
ReadInstreamFlowRightsFromHydroBase(ID="*")
WriteInstreamFlowRightsToList(OutputFile="cm2005.ifr.csv")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadInstreamFlowRightsFromStateMod`](../ReadInstreamFlowRightsFromStateMod/ReadInstreamFlowRightsFromStateMod.md) command
* [`WriteInstreamFlowRightsToStateMod`](../WriteInstreamFlowRightsToStateMod/WriteInstreamFlowRightsToStateMod.md) command
