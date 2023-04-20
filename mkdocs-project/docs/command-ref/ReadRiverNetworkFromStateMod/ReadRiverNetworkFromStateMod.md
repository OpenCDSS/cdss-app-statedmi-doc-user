# StateDMI / Command / ReadRiverNetworkFromStateMod #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ReadRiverNetworkFromStateMod` command (for StateMod)
reads the river network from a StateMod river network file.
The river network can then be manipulated and utilized by other commands.
Normally the StateMod river network is only created as output,
but it may be read if it is being converted to a generalized network file.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![ReadRiverNetworkFromStateMod command editor](ReadRiverNetworkFromStateMod.png)
</p>**

**<p style="text-align: center;">
`ReadRiverNetworkFromStateMod` Command Editor (<a href="../ReadRiverNetworkFromStateMod.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ReadRiverNetworkFromStateMod(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `InputFile`<br>**required** | The name of the StateMod river network file to be read. | None – must be specified. |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ReadRiverNetworkFromStateMod).

The following example command file illustrates how the command might be used:

```
# Create a generalized XML network from individual StateMod files
# Read the network, which contains upstream to downstream connectivity but does
# not indicate node types
ReadRiverNetworkFromStateMod(InputFile=cm2005.rin)
# Read the stations, which imply the node types
ReadRiverStreamGageStationsFromStateMod(InputFile=cm2005.ris)
ReadRiverDiversionStationsFromStateMod(InputFile=cm2005.dds)
ReadRiverReservoirStationsFromStateMod(InputFile=cm2005.res)
ReadRiverInstreamFlowStationsFromStateMod(InputFile=cm2005.ifs)
ReadRiverWellStationsFromStateMod(InputFile=cm2005.wes)
# To be developed...
#ReadRiverPlanStationsFromStateMod()
ReadRiverStreamEstimateStationsFromStateMod(InputFile=cm2005.ris)
# Now create the generalized network, using the connectivity and node types
CreateNetworkFromRiverNetwork()
# Fill in node names and locations from HydroBase, if any is still missing
FillNetworkFromHydroBase()
# Write the generalized network
WriteNetworkToStateMod(OutputFile="cm2005.net")
# Check for errors (the following is not yet implemented)
#CheckNetwork()
WriteCheckFile(OutputFile="cm2005.net.check.html")
```

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`WriteRiverNetworkToStateMod`](../WriteRiverNetworkToStateMod/WriteRiverNetworkToStateMod.md) command
