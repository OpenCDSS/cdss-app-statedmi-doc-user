# StateDMI / Command / ReadPlanWellAugmentationFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadPlanWellAugmentationFromStateMod` command (for StateMod)
well augmentation plan data from a StateMod well augmentation plan data file.
The data can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadPlanWellAugmentationFromStateMod](ReadPlanWellAugmentationFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadPlanWellAugmentationFromStateMod` Command Editor (<a href="../ReadPlanWellAugmentationFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadPlanWellAugmentationFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the StateMod well augmentation plan file to read. | None – must be specified. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadPlanWellAugmentationFromStateMod).

## Troubleshooting ##

## See Also ##

* [`WritePlanWellAugmentationToStateMod`](../WritePlanWellAugmentationToStateMod/WritePlanWellAugmentationToStateMod.md) command
