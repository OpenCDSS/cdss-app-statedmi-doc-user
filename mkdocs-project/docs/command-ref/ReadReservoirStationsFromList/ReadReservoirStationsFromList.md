# StateDMI / Command / ReadReservoirStationsFromList #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadReservoirStationsFromList` command (for StateMod)
reads a list of reservoir stations from a delimited list file and defines reservoir stations in memory.
The reservoir stations can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadReservoirStationsFromList command editor](ReadReservoirStationsFromList.png)
</p>**

**<p style="text-align: center;">
`ReadReservoirStationsFromList` Command Editor (<a href="../ReadReservoirStationsFromList.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadReservoirStationsFromList(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ListFile`<br>**required** | The name of the list file to be read. | None – must be specified. |
| `IDCol`<br>**required** | The column number (1+) containing the reservoir station identifiers. | None – must be specified. |
| `NameCol` | The column number (1+) containing the reservoir station names. | None – optional (name will be initialized to blank). |


## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadReservoirStationsFromList).

At a minimum, the list file must contain a column with diversion station identifiers.
Lines starting with the `#` character are treated as comments.
If the first line’s values are surrounded by double quotes, the line is assumed to indicate column headings.

A sample list file is shown below:

```
# Reservoir stations as a list file
#
"ID”,"Name"
203536,”Reservoir 1”
203558,”Reservoir 2”
...
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadReservoirStationsFromNetwork`](../ReadReservoirStationsFromNetwork/ReadReservoirStationsFromNetwork.md) command
* [`ReadReservoirStationsFromStateMod`](../ReadReservoirStationsFromStateMod/ReadReservoirStationsFromStateMod.md) command
* [`WriteReservoirStationsToStateMod`](../WriteReservoirStationsToStateMod/WriteReservoirStationsToStateMod.md) command
