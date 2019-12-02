# StateDMI / Command / SortWellHistoricalPumpingTSMonthly #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SortWellHistoricalPumpingTSMonthly` command (for StateCU and StateMod)
sorts the well historical pumping time series (monthly) in alphabetical order,
using the time series identifier (typically by the location since the location will vary between time series).
This command is useful if time series have been added during processing and
therefore the time series order no longer agrees with the well station order.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SortWellHistoricalPumpingTSMonthly](SortWellHistoricalPumpingTSMonthly.png)
</p>**

**<p style="text-align: center;">
`SortWellHistoricalPumpingTSMonthly` Command Editor (<a href="../SortWellHistoricalPumpingTSMonthly.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SortWellHistoricalPumpingTSMonthly(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `Order` | Indicate the order for the sort.  Currently only `Ascending` is supported.  The older `Alphabetical` is automatically converted to `Ascending`. | `Ascending` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SortWellHistoricalPumpingTSMonthly).

## Troubleshooting ##

## See Also ##

