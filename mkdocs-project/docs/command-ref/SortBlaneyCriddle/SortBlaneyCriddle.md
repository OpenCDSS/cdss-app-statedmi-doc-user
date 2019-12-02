# StateDMI / Command / SortBlaneyCriddle #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SortBlaneyCriddle` command (for StateCU)
sorts the Blaney-Criddle crop coefficients using the crop name.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SortBlaneyCriddle](SortBlaneyCriddle.png)
</p>**

**<p style="text-align: center;">
`SortBlaneyCriddle` Command Editor (<a href="../SortBlaneyCriddle.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SortBlaneyCriddle(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `Order` | Indicate the order for the sort for the crop name.  Currently only `Ascending` is supported.  The older `Alphabetical` will automatically be converted to `Ascending`. | `Ascending` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SortBlaneyCriddle).

## Troubleshooting ##

## See Also ##

