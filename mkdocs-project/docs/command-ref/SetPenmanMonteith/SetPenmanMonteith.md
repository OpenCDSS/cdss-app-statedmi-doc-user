# StateDMI / Command / SetPenmanMonteith #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetPenmanMonteith` command (for StateCU)
sets data in existing Penman-Monteith crop coefficients or adds a new crop type with crop coefficients.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetPenmanMonteith command editor](SetPenmanMonteith.png)
</p>**

**<p style="text-align: center;">
`SetPenmanMonteith` Command Editor (<a href="../SetPenmanMonteith.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetPenmanMonteith(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `CropType` | A crop type to match or a pattern using wildcards (e.g., `ALFALFA*`). | None – must be specified. |
| `Coefficients` | A list of coefficients, surrounded by double quotes. | If not specified, the original value will remain. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Add` – add the crop if not found using the provided information</li><li>`Fail` – generate a failure message if the crop is not found</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the crop is not found</li><li>`Warn` – generate a warning message if the crop is not found</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetPenmanMonteith).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

There are no additional related commands.
