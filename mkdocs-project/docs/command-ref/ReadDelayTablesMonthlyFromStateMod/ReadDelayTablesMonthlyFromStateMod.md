# StateDMI / Command / ReadDelayTablesMonthlyFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadDelayTablesMonthlyFromStateMod` command (for StateCU and StateMod)
reads delay tables (monthly) from a StateMod delay tables file.
For example, this command may be used to convert a delay table file between fraction and percent.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadDelayTablesMonthlyFromStateMod command editor](ReadDelayTablesMonthlyFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadDelayTablesMonthlyFromStateMod` Command Editor (<a href="../ReadDelayTablesMonthlyFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadDelayTablesMonthlyFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the input file to read, surrounded by double quotes. | None – must be specified. |
| `Scale` | If the StateMod delay table values are specified as fractions rather than percent, a scale of 100 can be used to convert the StateMod delay tables to percent. | If not specified, no scale is applied to the delay values. |


## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadDelayTablesMonthlyFromStateMod).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadDelayTablesDailyFromStateMod`](../ReadDelayTablesDailyFromStateMod/ReadDelayTablesDailyFromStateMod.md) command
* [`WriteDelayTablesMonthlyToStateMod`](../WriteDelayTablesMonthlyToStateMod/WriteDelayTablesMonthlyToStateMod.md) command
