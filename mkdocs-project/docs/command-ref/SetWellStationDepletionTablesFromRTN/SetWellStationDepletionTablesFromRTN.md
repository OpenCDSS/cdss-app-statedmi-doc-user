# StateDMI / Command / SetWellStationDepletionTablesFromRTN #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetWellStati nDepletionTablesFromRTN` command (for StateMod)
sets depletion table data in existing well stations using information in an RTN format file,
which is a format that has been used in CDSS StateMod modeling.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetWellStationDepletionTablesFromRTN](SetWellStationDepletionTablesFromRTN.png)
</p>**

**<p style="text-align: center;">
`SetWellStationDepletionTablesFromRTN` Command Editor (<a href="../SetWellStationDepletionTablesFromRTN.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetWellStationDepletionTablesFromRTN(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the RTN file to process.  Specify an absolute path or a path relative to the working directory. | None – must be specified. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Fail` – generate a failure message if the ID is not matched</li></li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched`</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetWellStationDepletionTablesFromRTN).

## Troubleshooting ##

## See Also ##

