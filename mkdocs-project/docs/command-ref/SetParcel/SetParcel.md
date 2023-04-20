# StateDMI / Command / SetParcel #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `SetParcel` command (for StateCU and StateMod) edits a single parcel's core data.
See also the [`SetParcelGroundWaterSupply`](../SetParcelGroundWaterSupply/SetParcelGroundWaterSupply.md) and
[`SetParcelSurfaceWaterSupply`](../SetParcelSurfaceWaterSupply/SetParcelSurfaceWaterSupply.md) commands,
which are used to edit supply data for a parcel.

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.

**<p style="text-align: center;">
![SetParcel command editor](SetParcel.png)
</p>**

**<p style="text-align: center;">
`SetParcel` Command Editor (<a href="../SetParcel.png">see also the full-size image</a>)
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
SetParcel(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

| **Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
| `Year`<br>**required**| Year for the parcel. | None - must be specified. |
| `ParcelID`<br>**required**| Parcel identifier. | None - must be specified. |
| `Division` | Water division. | Will not be modified. |
| `District` | Water district. | Will not be modified. |
| `CropType` | Crop type (e.g., `ALFALFA`). | Will not be modified. |
| `IrrigationMethod` | Irrigation method (`DRIP`, `FLOOD`, or `SPRINKLER`). | Will not be modified. |
| `Area` | Parcel area (acres). | Will not be modified. |
| `IfNotFound` | Action taken if `Year` and `ParcelID` are not matched:<ul><li>`Add` - add a new parcel (all data must be specified)</li><li>`Fail` – generate a failure message</li><li>`Ignore` – ignore (don’t edit and don’t generate a message)</li><li>`Warn` – generate a warning message</li></ul> | `Add` |
| `IfFound` | Action taken if `Year` and `ParcelID` are matched:<ul><li>`Set` - set the parcel data (data that are provided will be used)</li><li>`Remove` - remove the parcel</li><li>`Fail` – generate a failure message</li><li>`Ignore` – ignore (don’t edit and don’t generate a message)</li><li>`Warn` – generate a warning message</li></ul> | `Set` |

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/SetParcel).

## Troubleshooting ##

[See the main troubleshooting documentation](../../troubleshooting/troubleshooting.md)

## See Also ##

* [`SetParcelGroundWaterSupply`](../SetParcelGroundWaterSupply/SetParcelGroundWaterSupply.md) command
* [`SetParcelSurfaceWaterSupply`](../SetParcelSurfaceWaterSupply/SetParcelSurfaceWaterSupply.md) command
