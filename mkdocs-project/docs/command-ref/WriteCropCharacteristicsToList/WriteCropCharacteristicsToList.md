# StateDMI / Command / WriteCropCharacteristicsToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteCropCharacteristicsToList` command (for StateCU)
writes crop characteristics data to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteCropCharacteristicsToList](WriteCropCharacteristicsToList.png)
</p>**

**<p style="text-align: center;">
`WriteCropCharacteristicsToList` Command Editor (<a href="../WriteCropCharacteristicsToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteCropCharacteristicsToList(Parameter="Value",...)
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

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteCropCharacteristicsToList).

The following example illustrates how to process crop characteristics data from HydroBase:

```
ReadCropCharacteristicsFromHydroBase(CUMethod="BLANEY-CRIDDLE_TR-21")
WriteCropCharacteristicsToList(OutputFile="test.csv")
```

## Troubleshooting ##

## See Also ##

* [`ReadCropCharactersiticsFromStateCU`](../ReadCropCharacteristicsFromStateCU/ReadCropCharacteristicsFromStateCU.md) command
* [`WriteCropCharacteristicsToStateCU`](../WriteCropCharacteristicsToStateCU/WriteCropCharacteristicsToStateCU.md) command
