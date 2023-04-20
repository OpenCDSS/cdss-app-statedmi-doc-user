# StateDMI / Command / CheckIrrigationPracticeTS #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `CheckIrrigationPracticeTS` command (for StateCU)
checks the irrigation practice time series data for problems.  The command should usually be used with a
[`WriteCheckFile`](../WriteCheckFile/WriteCheckFile.md) command at the end of a command file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![CheckIrrigationPracticeTS Command Editor](CheckIrrigationPracticeTS.png)
</p>**

**<p style="text-align: center;">
`CheckIrrigationPracticeTS` Command Editor (<a href="../CheckIrrigationPracticeTS.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
CheckIrrigationPracticeTS(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | The location identifiers for the time series to check.  Use `*` to match a pattern. | None – must be specified. |
| `IfNotFound` | One of the following:<ul><li>`Fail` – generate a failure message if the identifier is not matched</li><li>`Ignore` – ignore (don’t generate a message) if the identifier is not matched</li><li>`Warn` – generate a warning message if the identifier is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/CheckIrrigationPracticeTS).

The following excerpt from a command file illustrates how irrigation practice time series can be checked and written to a StateCU file:

```
#
#  Create irrigation practice file
#
WriteIrrigationPracticeTSToStateCU(OutputFile="cm2006.ipy")
#
# Check the results
CheckIrrigationPracticeTS(ID="*")
WriteCheckFile(OutputFile="ipy.commands.StateDMI.check.html")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`WriteCheckFile`](../WriteCheckFile/WriteCheckFile.md) command
