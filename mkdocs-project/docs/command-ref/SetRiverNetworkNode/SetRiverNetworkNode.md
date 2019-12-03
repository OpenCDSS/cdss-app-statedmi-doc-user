# StateDMI / Command / SetRiverNetworkNode #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetRiverNetworkNode` command (for StateMod)
sets data in existing river network nodes or adds a new river network node.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetRiverNetworkNode](SetRiverNetworkNode.png)
</p>**

**<p style="text-align: center;">
`SetRiverNetworkNode` Command Editor (<a href="../SetRiverNetworkNode.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetRiverNetworkNode(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `ID` | A single river network node identifier to match or a pattern using wildcards (e.g., `20*`). | None – must be specified. |
| `Name` | The name to be assigned for all matching river network nodes. | If not specified, the original value will remain. |
| `DownstreamRiverNodeID` | The downstream river node identifier to be assigned for all matching river network nodes. | If not specified, the original value will remain. |
| `Comment` | The comment to be assigned for all matching river network nodes. | If not specified, the original value will remain. |
| `MaxRechargeLimit` | The maximum recharge limit, CFS, for groundwater modeling, assigned for all matching river network nodes. | If not specified, the original value will remain. |
| `IfNotFound` | Used for error handling, one of the following:<ul><li>`Add` – add the river network node if the ID is not matched and is not a wildcard (note that nodes that are upstream and downstream of the addition are NOT automatically changed)</li><li>`Fail` – generate a failure message if the ID is not matched</li><li>`Ignore` – ignore (don’t add and don’t generate a message) if the ID is not matched</li><li>`Warn` – generate a warning message if the ID is not matched</li></ul> | `Warn` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetRiverNetworkNode).

## Troubleshooting ##

## See Also ##

* [`FillRiverNetworkNode`](../FillRiverNetworkNode/FillRiverNetworkNode.md) command
* [`FillRiverNetworkFromHydroBase`](../FillRiverNetworkFromHydroBase/FillRiverNetworkFromHydroBase.md) command
* [`FillRiverNetworkFromNetwork`](../FillRiverNetworkFromNetwork/FillRiverNetworkFromNetwork.md) command
