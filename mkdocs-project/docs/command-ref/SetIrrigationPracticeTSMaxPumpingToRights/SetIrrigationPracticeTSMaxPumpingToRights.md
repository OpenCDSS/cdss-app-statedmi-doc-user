# StateDMI / Command / SetIrrigationPracticeTSMaxPumpingToRights #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

**This command is obsolete - instead, use the
[`SetIrrigationPracticeTSPumpingMaxUsingWellRights`](../SetIrrigationPracticeTSPumpingMaxUsingWellRights/SetIrrigationPracticeTSPumpingMaxUsingWellRights.md) command.**

The legacy `SetIrrigationPracticeTSMaxPumpingToRights`command (for StateCU)
was used for RGDSS Phase 4 Río Grande work, and only works with one year of parcel data (e.g., 1998).
However, an entirely new procedure has now been implemented, which can be applied to all basins.
The new procedure relies on processing water rights into a StateMod water rights file and
then using this file as input when processing parcels for the irrigation practice time series.
Other commands have also been implemented to allow more control over acreage processing.

