# StateDMI / Command / WriteOperationalRightsToStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `WriteOperationalRightsToStateMod` command (for StateMod)
writes operational rights that have been defined to a StateMod operational rights file.

**This command is used to facilitate automated testing but is not currently used in modeling.**

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![WriteOperationalRightsToStateMod](WriteOperationalRightsToStateMod.png)
</p>**

**<p style="text-align: center;">
`WriteOperationalRightsToStateMod` Command Editor (<a href="../WriteOperationalRightsToStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
WriteOperationalRightsToStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `OutputFile`<br>**required** | The name of the output file to write. | None – must be specified. |
| `WriteHow` | `OverwriteFile` if the file should be overwritten or `UpdateFile` if the file should be updated, resulting in the previous header being carried forward. | `OverwriteFile` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/WriteOperationalRightsToStateMod).

## Troubleshooting ##

## See Also ##

* [`ReadOperationalRightsFromStateMod`](../ReadOperationalRightsFromStateMod/ReadOperationalRightsFromStateMod.md) command
