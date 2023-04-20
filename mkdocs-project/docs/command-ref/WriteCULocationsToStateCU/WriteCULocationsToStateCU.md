# StateDMI / Command / WriteCULocationsToStateCU #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteCULocationsToStateCU` command (for StateCU)
writes CU Locations that have been defined to a StateCU structure file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteCULocationsToStateCU command editor](WriteCULocationsToStateCU.png)
</p>**

**<p style="text-align: center;">
`WriteCULocationsToStateCU` Command Editor (<a href="../WriteCULocationsToStateCU.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteCULocationsToStateCU(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `Version` | Indicate the StateCU version, to allow writing file formats for older versions of StateCU. | Write the format for the most current know StateCU version. |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteCULocationsToStateCU).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadCULocationsFromStateCU`](../ReadCULocationsFromStateCU/ReadCULocationsFromStateCU.md) command
* [`WriteCULocationsToList`](../WriteCULocationsToList/WriteCULocationsToList.md) command
