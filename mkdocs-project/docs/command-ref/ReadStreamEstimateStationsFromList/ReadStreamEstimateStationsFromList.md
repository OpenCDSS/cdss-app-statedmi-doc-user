# StateDMI / Command / ReadStreamEstimateStationsFromList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadStreamEstimateStationsFromList` command (for StateMod)
reads a list of stream estimate stations from a delimited list file and defines stream estimate stations in memory.
The stream estimate stations can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadStreamEstimateStationsFromList command editor](ReadStreamEstimateStationsFromList.png)
</p>**

**<p style="text-align: center;">
`ReadStreamEstimateStationsFromList` Command Editor (<a href="../ReadStreamEstimateStationsFromList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadStreamEstimateStationsFromList(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ListFile` | The name of the list file to be read. | None – must be specified. |
| `IDCol` | The column number (1+) containing the stream estimate station identifiers. | None – must be specified. |
| `NameCol` | The column number (1+) containing the stream estimate station names. | If not specified, set to blank. |
| `RiverNodeIDCol` | The column number (1+) containing the river node identifier. | If not specified, set to blank. |
| `DailyIDCol` | The column number (1+) containing the daily identifier (for estimating time series). | If not specified, set to blank. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadStreamEstimateStationsFromList).

At a minimum, the list file must contain a column with stream estimate station identifiers.
Lines starting with the `#` character are treated as comments.
If the first line’s values are surrounded by double quotes, the line is assumed to indicate column headings.

A sample list file is shown below:

```
# Stream estimate stations as a list file
#
"ID”,"Name"
NF1,”Natural flow 1”
NF2,”Natural flow 2”
...
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadStreamEstimateStationsFromNetwork`](../ReadStreamEstimateStationsFromNetwork/ReadStreamEstimateStationsFromNetwork.md) command
* [`ReadStreamEstimateStationsFromStateMod`](../ReadStreamEstimateStationsFromStateMod/ReadStreamEstimateStationsFromStateMod.md) command
* [`WriteStreamEstimateStationsToStateMod`](../WriteStreamEstimateStationsToStateMod/WriteStreamEstimateStationsToStateMod.md) command
