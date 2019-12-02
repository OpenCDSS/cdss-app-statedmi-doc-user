# StateDMI / Command / SortIrrigationPracticeTS #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SortIrrigationPracticeTS` command (for StateCU)
sorts the irrigation practice time series using the location identifier, and is typically used before writing output.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SortIrrigationPracticeTS](SortIrrigationPracticeTS.png)
</p>**

**<p style="text-align: center;">
`SortIrrigationPracticeTS` Command Editor (<a href="../SortIrrigationPracticeTS.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SortIrrigationPracticeTS(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `Order` | Indicate the order for the sort.  Currently only `Ascending` is supported.  The older `Alphabetical` will automatically be converted to `Ascending`. | `Ascending` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SortIrrigationPracticeTS).

## Troubleshooting ##

## See Also ##
