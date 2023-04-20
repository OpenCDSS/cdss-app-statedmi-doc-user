# StateDMI / Command / WritePenmanMonteithToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WritePenmanMonteithToList` command (for StateCU)
writes Penman-Monteith crop coefficients data to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WritePenmanMonteithToList command editor](WritePenmanMonteithToList.png)
</p>**

**<p style="text-align: center;">
`WritePenmanMonteithToList` Command Editor (<a href="../WritePenmanMonteithToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WritePenmanMonteithToList(Parameter="Value",...)
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

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WritePenmanMonteithToList).

The following example illustrates how to process crop characteristics data from HydroBase:

```
ReadPenmanMonteithFromHydroBase(PenmanMonteithMethod="PENMAN-MONTEITH_ALFALFA")
WritePenmanMonteithToList(OutputFile="test.csv")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadPenmanMonteithFromStateCU`](../ReadPenmanMonteithFromStateCU/ReadPenmanMonteithFromStateCU.md) command
* [`WritePenmanMonteithToStateCU`](../WritePenmanMonteithToStateCU/WritePenmanMonteithToStateCU.md) command
