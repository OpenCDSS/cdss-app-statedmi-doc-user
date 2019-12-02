# StateDMI / Command / WriteDiversionRightsToList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteDiversionRightsToList` command (for StateMod)
writes diversion rights data to a delimited file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteDiversionRightsToList](WriteDiversionRightsToList.png)
</p>**

**<p style="text-align: center;">
`WriteDiversionRightsToList` Command Editor (<a href="../WriteDiversionRightsToList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteDiversionRightsToList(Parameter="Value",...)
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

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteDiversionRightsToList).

The following example illustrates how to create a list of diversion rights from a list of stations:

```
ReadDiversionStationsFromList(ListFile="test.csv")
ReadDiversionRightsFromHydroBase(ID="*")
WriteDiversionRightsToList(OutputFile="rights.csv")
```

## Troubleshooting ##

## See Also ##

* [`ReadDiversionRightsFromStateMod`](../ReadDiversionRightsFromStateMod/ReadDiversionRightsFromStateMod.md) command
* [`WriteDiversionRightsToStateMod`](../WriteDiversionRightsToStateMod/WriteDiversionRightsToStateMod.md) command
