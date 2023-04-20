# StateDMI / Command / ReadReservoirStationsFromNetwork #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadReservoirStationsFromNetwork` command (for StateMod)
reads a list of reservoir stations from a StateMod network file (XML or older Makenet network file) and defines reservoir stations in memory.
The reservoir stations can then be manipulated and output with other commands.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadReservoirStationsFromNetwork command editor](ReadReservoirStationsFromNetwork.png)
</p>**

**<p style="text-align: center;">
`ReadReservoirStationsFromNetwork` Command Editor (<a href="../ReadReservoirStationsFromNetwork.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadReservoirStationsFromNetwork(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the network file to be read. | None – must be specified. |


## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadReservoirStationsFromNetwork).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`ReadReservoirStationsFromList`](../ReadReservoirStationsFromList/ReadReservoirStationsFromList.md) command
* [`ReadReservoirStationsFromStateMod`](../ReadReservoirStationsFromStateMod/ReadReservoirStationsFromStateMod.md) command
* [`WriteReservoirStationsToStateMod`](../WriteReservoirStationsToStateMod/WriteReservoirStationsToStateMod.md) command
