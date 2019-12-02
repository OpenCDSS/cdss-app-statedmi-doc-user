# StateDMI / Command / WriteDiversionRightsToStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteDiversionRightsToStateMod` command (for StateMod)
writes diversion rights that have been defined to a StateMod diversion rights file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteDiversionRightsToStateMod](WriteDiversionRightsToStateMod.png)
</p>**

**<p style="text-align: center;">
`WriteDiversionRightsToStateMod` Command Editor (<a href="../WriteDiversionRightsToStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteDiversionRightsToStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteDiversionRightsToStateMod).

## Troubleshooting ##

## See Also ##

* [`ReadDiversionRightsFromStateMod`](../ReadDiversionRightsFromStateMod/ReadDiversionRightsFromStateMod.md) command
* [`WriteDiversionRightsToList`](../WriteDiversionRightsToList/WriteDiversionRightsToList.md) command
