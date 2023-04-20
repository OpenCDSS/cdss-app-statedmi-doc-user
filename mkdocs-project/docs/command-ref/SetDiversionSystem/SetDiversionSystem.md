# StateDMI / Command / SetDiversionSystem #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetDiversionSystem` command (for StateCU and StateMod) sets diversion system part identifier data for:

* a CU Location that corresponds to a diversion or a D&W node
* or a StateMod diversion station

Diversion systems are specified using a list of ditch identifiers,
and the system information applies for the full model period (does not vary by year).
To facilitate processing, it is often best to use list files to specific systems
(see the [`SetDiversionSystemFromList`](../SetDiversionSystemFromList/SetDiversionSystemFromList.md) command).
Systems by convention have their water rights fully represented in output.
To aggregate water rights at a location, use an aggregate
(see the similar [`SetDiversionAggregate`](../SetDiversionAggregate/SetDiversionAggregate.md) command).
See also the StateDMI Introduction chapter,
which provides additional information about systems and other modeling conventions.
System information should be specified after diversion locations are defined and before their use in other processing,
such as reading data from HydroBase.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetDiversionSystem command editor](SetDiversionSystem.png)
</p>**

**<p style="text-align: center;">
`SetDiversionSystem` Command Editor (<a href="../SetDiversionSystem.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetDiversionSystem(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` <br>**required** | The diversion identifier to associate with the collection of individual diversions. | None – must be specified. |
| `PartIDs`<br>**required**  | The list of part identifiers to comprise the system, for example ditch WDIDs that will be found in HydroBase.  The part identifiers are by default of type Ditch. | None – must be specified. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Fail` – generate a failure message if the identifier is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the identifier is not matched</li><li>`Warn` – generate a warning message if the identifier is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetDiversionSystem).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`SetDiversionAggregate`](../SetDiversionAggregate/SetDiversionAggregate.md) command
* [`SetDiversionMultiStruct`](../SetDiversionMultiStruct/SetDiversionMultiStruct.md) command
* [`SetDiversionSystemFromList`](../SetDiversionSystemFromList/SetDiversionSystemFromList.md) command
