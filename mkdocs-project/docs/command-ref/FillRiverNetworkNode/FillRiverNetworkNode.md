# StateDMI / Command / FillRiverNetworkNode #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `FillRiverNetworkNode` command (for StateMod)
fills missing values in existing river network nodes.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![FillRiverNetworkNode command editor](FillRiverNetworkNode.png)
</p>**

**<p style="text-align: center;">
`FillRiverNetworkNode` Command Editor (<a href="../FillRiverNetworkNode.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
FillRiverNetworkNode(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | A single river network node identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `Name` | The name to be assigned for all matching river network nodes. | If not specified, missing values will not be filled. |
| `DownstreamRiverNodeID` | The downstream river node identifier to be assigned for all matching river network nodes. | If not specified, missing values will not be filled. |
| `MaxRechargeLimit` | The maximum recharge limit, CFS, for groundwater modeling, assigned for all matching river network nodes. | If not specified, missing values will not be filled. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/FillRiverNetworkNode).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`FillRiverNetworkFromHydroBase`](../FillRiverNetworkFromHydroBase/FillRiverNetworkFromHydroBase.md) command
* [`FillRiverNetworkFromNetwork`](../FillRiverNetworkFromNetwork/FillRiverNetworkFromNetwork.md) command
* [`SetRiverNetworkNode`](../SetRiverNetworkNode/SetRiverNetworkNode.md) command
