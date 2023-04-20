# StateDMI / Command / WriteClimateStationsToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteClimateStationsToList` command (for StateCU)
writes climate stations data to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteClimateStationsToList command editor](WriteClimateStationsToList.png)
</p>**

**<p style="text-align: center;">
`WriteClimateStationsToList` Command Editor (<a href="../WriteClimateStationsToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteClimateStationsToList(Parameter="Value",...)
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

See the [automated tests](https://github.com/OpenDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteClimateStationsToList).

The following example illustrates how to process climate data from HydroBase, starting with a list of station identifiers, and creating a full list of climate station data:

```
ReadClimateStationsFromList(ListFile="idonly.csv",IDCol="2")
FillClimateStationsFromHydroBase(ID="*")
WriteClimateStationsToList(OutputFile="COclim2006.csv")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadClimateStationsFromList`](../ReadClimateStationsFromList/ReadClimateStationsFromList.md) command
* [`ReadClimateStationsFromStateCU`](../ReadClimateStationsFromStateCU/ReadClimateStationsFromStateCU.md) command
* [`WriteClimateStationsToStateCU`](../WriteClimateStationsToStateCU/WriteClimateStationsToStateCU.md) command
