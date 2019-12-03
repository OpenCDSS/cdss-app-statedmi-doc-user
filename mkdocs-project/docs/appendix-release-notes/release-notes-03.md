# StateDMI / Release Notes / Version 3 #

* [Changes in Versions 3.12.02](#changes-in-version-31202)
* [Changes in Versions 3.12.00 – 3.12.01](#changes-in-versions-31200-31201)
* [Changes in Versions 3.11.00 – 3.11.01](#changes-in-versions-31100-31101)
* [Changes in Version 3.10.00](#changes-in-version-31000)
* [Changes in Versions 3.09.00 – 3.09.02](#changes-in-versions-30900-30902)
* [Changes in Versions 3.04.00 – 3.08.02](#changes-in-versions-30400-30802)
* [Changes in Versions 3.00.00 - 3.03.00](#changes-in-versions-30000-30300)
* [Release notes for all versions](release-notes.md)

----------

## Changes in Version 3.12.02

* ![change](change.png) [3.12.02] Release software with component versions consistent with other CDSS software tools that are being released at the same time, essentially a maintenance release.

## Changes in Versions 3.12.00 - 3.12.01

* ![bug](bug.png) [3.12.00] The [`ReadNetworkFromStateMod`](../command-ref/ReadNetworkFromStateMod/ReadNetworkFromStateMod.md) command, followed by [`WriteNetworkToStateMod`](../command-ref/WriteNetworkToStateMod/WriteNetworkToStateMod.md) command would change the network plotting limits to alternate coordinates (e.g., UTM X, Y) – this has been fixed and generally only impacted automated testing.
* ![change](change.png) [3.12.00] Add `FillFlag` parameter to the [`FillCropPatternTSRepeat`](../command-ref/FillCropPatternTSRepeat/FillCropPatternTSRepeat.md) and [`FillIrrigationPracticeTSRepeat`](../command-ref/FillIrrigationPracticeTSRepeat/FillIrrigationPracticeTSRepeat.md) commands.
* ![change](change.png) [3.12.00] Add the `IgnoreWhitespace` parameter to the [`CompareFiles`](../command-ref/CompareFiles/CompareFiles.md) command to facilitate automated software testing.
* ![change](change.png) [3.12.00] Add the measurement height data values to StateCU climate stations and update the read/write/fill/set commands and displays.
* ![change](change.png) [3.12.00] Return flow assignments now have an optional comment field on the right, as per conventions in data sets (in particular for new reservoir and plan returns).
* ![new](new.png) [3.12.01] The network editor now has a menu bar and several tools have been added to facilitate editing the network, for example to align a sequence of nodes.  Links can now be configured to display as an arrow.
* ![new](new.png) [3.12.01] StateDMI can be run in batch mode similar to TSTool using:  `StateDMI –commands CommandFilename`
* ![new](new.png) [3.12.01] Add the [`PrintNetwork`](../command-ref/PrintNetwork/PrintNetwork.md) command to automate printing and for testing.  Printing the full sized network has been re-enabled in the network editor, as well as saving images of the visible network.
* ![new](new.png) [3.12.01] Training materials are now accessible from the Help menu.
* ![new](new.png) [3.12.00] Add the following commands for StateMod operational rights:  [`ReadOperationalRightsFromStateMod`](../command-ref/ReadOperationalRightsFromStateMod/ReadOperationalRightsFromStateMod.md), [`SetOperationalRight`](../command-ref/SetOperationalRight/SetOperationalRight.md), [`WriteOperationalRightsToStateMod`](../command-ref/WriteOperationalRightsToStateMod/WriteOperationalRightsToStateMod.md).  Also add a display for results.
* ![new](new.png) [3.12.00] Add the following commands for StateMod plan stations:  [`ReadPlanStationsFromStateMod`](../command-ref/ReadPlanStationsFromStateMod/ReadPlanStationsFromStateMod.md), [`SetPlanStation`](../command-ref/SetPlanStation/SetPlanStation.md), [`WritePlanStationsToStateMod`](../command-ref/WritePlanStationsToStateMod/WritePlanStationsToStateMod.md).  Also add a display for results.
* ![new](new.png) [3.12.00] Add the following commands for StateMod plan return flow data:  [`ReadPlanReturnFromStateMod`](../command-ref/ReadPlanReturnFromStateMod/ReadPlanReturnFromStateMod.md), [`WritePlanReturnToStateMod`](../command-ref/WritePlanReturnToStateMod/WritePlanReturnToStateMod.md).  Also add a display for results.
* ![new](new.png) [3.12.00] Add the following commands for StateMod reservoir return flow data:  [`ReadReservoirReturnFromStateMod`](../command-ref/ReadReservoirReturnFromStateMod/ReadReservoirReturnFromStateMod.md), [`WriteReservoirReturnToStateMod`](../command-ref/WriteReservoirReturnToStateMod/WriteReservoirReturnToStateMod.md).  Also add a display for results.
* ![new](new.png) [3.12.00] Add the following commands for StateMod response file data:  [`ReadResponseFromStateMod`](../command-ref/ReadResponseFromStateMod/ReadResponseFromStateMod.md), [`WriteResponseToStateMod`](../command-ref/WriteResponseToStateMod/WriteResponseToStateMod.md).
* ![new](new.png) [3.12.00] Add the following commands for StateMod control file data:  [`ReadControlFromStateMod`](../command-ref/ReadControlFromStateMod/ReadControlFromStateMod.md), [`WriteControlToStateMod`](../command-ref/WriteControlToStateMod/WriteControlToStateMod.md).
* ![new](new.png) [3.12.00] Add the [`AppendNetwork`](../command-ref/AppendNetwork/AppendNetwork.md) command to merge networks, for example to combine West Slope basin data set networks.
* ![new](new.png) [3.12.00] If the system/CDSS.cfg file does not exist, StateDMI will not attempt to make a HydroBase connection – this streamlines using StateDMI in systems where HydroBase is not available.

## Changes in Versions 3.11.00 - 3.11.01

* ![bug](bug.png) [3.11.00] Fix bug where the [`ReadWellRightsFromHydroBase(DefineRightHow)`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) parameter was generating an error if left blank (work-around is to explicitly specify the parameter).
* ![change](change.png) [3.11.01] Update installer to support Vista and Windows 7 installations.
* ![new](new.png) [3.11.00] Include CDSS Overview presentation with software under doc folder.

## Changes in Version 3.10.00

* ![bug](bug.png) [3.10.00] Fix bug where Paste menus were not enabled on first copy/cut action.
* ![new](new.png) [3.10.00] Support has been added for StateCU Penman-Monteith crop coefficient processing, similar to Blaney-Criddle commands.
* ![new](new.png) [3.10.00] Training materials are now included with the installation in the doc\Training folder.  Several slideshows are included, with supporting examples.

## Changes in Versions 3.09.00 - 3.09.02

* ![bug](bug.png) [3.09.02] Commands read from a command file that have invalid parameters were not always generating a visible warning for the user – this has been fixed.
* ![bug](bug.png) [3.09.02] The [`SetCropPatternTSFromList(…ProcessWhen=Now..)`](../command-ref/SetCropPatternTSFromList/SetCropPatternTSFromList.md) command, when used with a file that had multiple crops for a location, would only set the acreage for the last crop listed (all others were set to zero in a year).  The command has been updated to properly handle multiple crops at a location.
* ![bug](bug.png) [.09.01] The [`SortWellRights`](../command-ref/SortWellRights/SortWellRights.md) command editor was not correctly displaying the Order2 parameter upon re-edit – this has been fixed.
* ![bug](bug.png) [.09.01] Fix bug where the [`SetIrrigationPracticeTSFromList`](../command-ref/SetIrrigationPracticeTSFromList/SetIrrigationPracticeTSFromList.md) command was swapping the columns for surface water acres flood and groundwater acres flood.  This command has also been updated to compute the groundwater total and surface water total values.  The totals are provided for information only (not used by StateCU).
* ![bug](bug.png) [3.09.01] StateMod time series files could not be read if they did not have at least one comment at the top – this has been fixed.
* ![bug](bug.png) [3.09.00] The `Set*AggregateFromList()` and `Set*SystemFromList()` commands now will set the station name if the `NameCol` is specified when `PartsListedHow=InColumn`.  The set will only occur if the original value is blank and the first non-blank value in the list file will be used.  Previously the name could only be set if the parts were provided in a single row.
* ![bug](bug.png) [3.09.00] The [`MergeWellRights`](../command-ref/MergeWellRights/MergeWellRights.md) command would result in no rights if all the original rights were explicit (not determined from parcel matching).  This is an extreme case that normally would not be encountered.
* ![bug](bug.png) [3.09.00] The [`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) command was always setting the date for well permits to the default date – this has been fixed.  The bug was introduced in version 3.04.00.
* ![change](change.png) [3.09.01] All documentation has been updated to current software features.
* ![change](change.png) [3.09.00] The [`ReadIrrigationPracticeTSFromHydroBase`](../command-ref/ReadIrrigationPracticeTSFromHydroBase/ReadIrrigationPracticeTSFromHydroBase.md) command has been updated to include the Optimization parameter, with the default now being to use more memory to increase performance.
* ![change](change.png) [3.09.01] Writing StateMod time series files will now write the total as the sum of the monthly or daily values as printed in the file (previously was computed as the in-memory total, which results in a different value).  The total will also now be shown as a missing value more often due to more checks on the other values (previously may have been shown as zero).  Output from commands that write time series may be slightly different; however, this column is not used by models and therefore results will not change.
* ![change](change.png) [3.09.00] The Java Runtime Environment (JRE) version 1.6 was updated to release 1.8, providing increased performance.
* ![change](change.png) [3.09.00] The [`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) command has been updated to include the Optimization parameter, with the default now being to use more memory to increase performance.
* ![change](change.png) [3.09.00] The [`SetDiversionAggregateFromList`](../command-ref/SetDiversionAggregateFromList/SetDiversionAggregateFromList.md) and [`SetDiversionSystemFromList`](../command-ref/SetDiversionSystemFromList/SetDiversionSystemFromList.md) commands now CANNOT be used to specify collection information for StateMod well stations.  Instead, use the [`SetWellAggregateFromList`](../command-ref/SetWellAggregateFromList/SetWellAggregateFromList.md) and [`SetWellSystemFromList`](../command-ref/SetWellSystemFromList/SetWellSystemFromList.md) commands.  This change allows error handling to be more robust and focuses well processing on well data.
* ![new](new.png) [3.09.00] Add the ***Administration Number Calculator*** tool to help users convert between appropriation dates and administration numbers.

## Changes in Versions 3.04.00 - 3.08.02

* ![bug](bug.png) [3.08.02] The [`CalculateStreamEstimateCoefficients`]() command was ignoring information from the [`SetStreamEstimateCoefficientsPFGage`]() commands – this bug was introduced in the 3.+ version and has been fixed.
* ![bug](bug.png) [3.08.02] The [`SetStreamGageStation`]() command was generating an error about the ID not being matched even when it was – this has been fixed.
* ![bug](bug.png) [3.08.02] Commands that set aggregate/system information from a list file were trying to match an empty ID from a blank line in the list file – this generated warnings and has been fixed.
* ![bug](bug.png) [3.08.00] The [`FillWellStationsFromDiversionStations`]() command was using the wrong station to fill data – this would be evident from incorrect well station names.
* ![bug](bug.png) [3.08.00] The [`ReadWellHistoricalPumpingTSFromStateCU`]() and [`ReadWellHistoricalPumpingTSFromStateMod`]()commands were not accessing the list of well rights for checks for whether a station is a diversion or well – some time series were not being read.
* ![bug](bug.png) [3.07.00] The [`FillCropPatternTSConstant`]() command would only allow integer constants – this has been fixed to also allow floating point values.
* ![bug](bug.png) [3.06.00] The network editor annotation dialog would indicate an invalid Y coordinate for networks that were very wide compared to the height – this has been fixed.
* ![bug](bug.png) [3.04.00] The [`SetRiverNetworkNode`]() and [`FillRiverNetworkNode`]() commands were not functioning properly, resulting in values not getting set – this has been fixed.
* ![bug](bug.png) [3.04.00] The `Read*FromNetwork()` commands were not properly handling the case where no network file was specified – this has been fixed.
* ![bug](bug.png) [3.04.00] The [`ReadWellRightsFromHydroBase`]() command was ignoring the Year parameter and was trying to read all years in HydroBase  – this has been fixed.
* ![change](change.png) [3.08.02] The [`CompareFiles`]() command `WarnIfDifferent` parameter has been changed to `IfDifferent`, to allow for more parameter values and be similar to other commands.  The `WarnIfSame` parameter has similarly been changed to `IfSame`.  Old commands are automatically updated.
* ![change](change.png) [3.08.00] The `Set*TSConstant()` commands have been updated to by default reset the original data limits, based on typical use of the command.  The `RecalcLimits` parameter can be used to skip this computation.  This change may have some impact on data that is filled with the `Fill*HistMonthAverage()` commands.
* ![change](change.png) [3.07.00] The Java Runtime Environment (JRE) was updated from version 1.4.2 to version 1.6, providing increased performance and allowing upgrades in other areas.  In particular, a new SQL Server database driver is now being used to allow an update to SQL Server 2008 for HydroBase.
* ![change](change.png) [3.06.00] The [`MergeWellRights`]() command has been updated to include the SumDecrees parameter to merge multiple rights that are otherwise the same.
* ![change](change.png) [3.06.00] Some previous output check features have been disabled in preparation of finalizing the new check design (see [`CheckWellRights`](../command-ref/CheckWellRights/CheckWellRights.md)).  Check commands have been added for all StateCU components.
* ![change](change.png) [3.05.00] The [`MergeWellRights`]() command now explicitly passes through well rights that have no parcel year, in order to retain rights from explicit well (or well collections) that do not utilize parcel relationships.
* ![change](change.png) [3.04.00] The `Set*AggregateFromList()`, `Set*SystemFromList()` and [`SetDiversionMultiStructFromList`](../command-ref/SetDiversionMultiStructFromList/SetDiversionMultiStructFromList.md) commands now warn about missing files when the commands are loaded.
* ![change](change.png) [3.04.00] Fill and set commands for StateMod diversion stations, instream flow stations, river network nodes, reservoir stations, stream gage and estimate stations, well stations, and water rights have been updated to trim whitespace from parameters because extra whitespace included in quoted values was causing identifiers to not be matched properly and values to be formatted incorrectly.
* ![remove](remove.png) [3.06.00] The StateCU commands related to delay tables have been removed since these files are no longer used with StateCU.
* ![new](new.png) [3.08.00] Add check commands for all StateMod components.  Check commands are now in place for all components produced by StateDMI.  Future releases may add additional specific checks to these commands.
* ![new](new.png) [3.08.00] Add the [`ReadInstreamFlowDemandTSAverageMonthlyFromStateMod`](../command-ref/ReadInstreamFlowDemandTSAverageMonthlyFromStateMod/ReadInstreamFlowDemandTSAverageMonthlyFromStateMod.md) command.
* ![new](new.png) [3.07.00] Add the [`SortCropPatternTS`](../command-ref/SortCropPatternTS/SortCropPatternTS.md) command.
* ![new](new.png) [3.04.00] The progress indicator for commands is now active and has been enabled for the [`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) command.  Additional commands will be updated in future releases to show progress within the command, in particular for longer-running commands.
* ![new](new.png) [3.04.00] The Problems tab has been added in the results area to summarize the warning/failure messages from all commands.  The [`WriteCheckFile`](../command-ref/WriteCheckFile/WriteCheckFile.md) command also has been added to format the messages to a file.  The [`CheckWellRights`](../command-ref/CheckWellRights/CheckWellRights.md) command has been added to check well rights and generate warning/failure messages.  Additional check commands will be implemented in upcoming releases using this design.

## Changes in Versions 3.00.00 - 3.03.00

* ![bug](bug.png) [3.08.00] The [`ReadIrrigationPracticeTSFromHydroBase`](../command-ref/ReadIrrigationPracticeTSFromHydroBase/ReadIrrigationPracticeTSFromHydroBase.md) and [`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) commands were allowing WDIDs to be provided that were not associated with the water division provided by the `Div` parameter – a warning has now been added and offending locations will not be processed to ensure that only locations in the specified division are processed by the command.  Some data sets may need to be updated to ensure that separate commands are used to process data in different divisions.
* ![bug](bug.png) [3.03.00] The [`ReadRiverNetworkFromStateMod`](../command-ref/ReadRiverNetworkFromStateMod/ReadRiverNetworkFromStateMod.md) command was not reading the comment and groundwater maximum recharge correctly – this has been fixed.
* ![bug](bug.png) [3.03.00] The `Set*TSConstant()` commands were not recognizing the set period when adding a new time series (the output period was always used for the set) – this has been fixed.
* ![bug](bug.png) [3.03.00] Well historical pumping time series (monthly) commands were included under diversion data rather than well data.
* ![bug](bug.png) [3.02.00] Fix the [`ReadWellStationsFromStateMod`](../command-ref/ReadWellStationsFromStateMod/ReadWellStationsFromStateMod.md) command – variable efficiencies were being read such that the first month was used for all months.
* ![bug](bug.png) [3.02.00] Fix the `WriteDelayTables*ToStateMod()` commands – the table identifier and number of values in the table were not being written correctly.  Also add the `Precision` parameter to allow more flexibility and simplify software testing.
* ![bug](bug.png) [3.02.00] Fix the [`SetWellStation`](../command-ref/SetWellStation/SetWellStation.md) and [`SetDiversionStation`](../command-ref/SetDiversionStation/SetDiversionStation.md) commands – previously using “ID” in the river node field would not automatically use the station identifier.
* ![bug](bug.png) [3.02.00] The Fill/Set `ReservoirStation` command was setting the on/off switch instead of the one fill rule value when new stations were added. – this has been fixed.  Setting values in existing reservoirs did not have the problem.
* ![change](change.png) [3.03.00] The `Set*TSConstant()` commands  now set the original data limits to that of the set data when new time series are added (averages are computed by including values <= 0) – this allows filling with average or pattern with a later command.
* ![change](change.png) [3.03.00] The [`FillNetworkFromHydroBase`](../command-ref/FillNetworkFromHydroBase/FillNetworkFromHydroBase.md) command has been updated to automatically project geographic coordinates to UTM if only geographic are available in the database.
* ![change](change.png) [3.02.00] The `ReadDelayTablesFromStateMod()` command has been renamed [`ReadDelayTablesMonthlyFromStateMod`](../command-ref/ReadDelayTablesMonthlyFromStateMod/ReadDelayTablesMonthlyFromStateMod.md) and [`ReadDelayTablesDailyFromStateMod`](../command-ref/ReadDelayTablesDailyFromStateMod/ReadDelayTablesDailyFromStateMod.md) in order to minimize confusion about command functionality related to various data components.
* ![change](change.png) [3.02.00] The [`SetInstreamFlowDemandTSAverageMonthlyConstant`](../command-ref/SetInstreamFlowDemandTSAverageMonthlyConstant/SetInstreamFlowDemandTSAverageMonthlyConstant.md) and [`SetInstreamFlowDemandTSAverageMonthlyFromRights`](../command-ref/SetInstreamFlowDemandTSAverageMonthlyFromRights/SetInstreamFlowDemandTSAverageMonthlyFromRights.md) commands will now by default warn if the requested time series is not found.  Specify the `IfNotFound=Add` parameter to request that the time series be added in this situation.  This allows for increased error handling and quality control.
* ![change](change.png) [3.02.00] The `WriteDelayTablesToStateMod()` command has been renamed [`WriteDelayTablesMonthlyToStateMod`](../command-ref/WriteDelayTablesMonthlyToStateMod/WriteDelayTablesMonthlyToStateMod.md) and [`WriteDelayTablesDailyToStateMod`](../command-ref/WriteDelayTablesDailyToStateMod/WriteDelayTablesDailyToStateMod.md) in order to minimize confusion about command functionality related to various data components.
* ![change](change.png) [3.02.00] Change the [`FillStreamEstimateStationsFromHydroBase](../command-ref/FillStreamEstimateStationsFromHydroBase/FillStreamEstimateStationsFromHydroBase.md) command to optionally check for structure information in HydroBase – previously only station information could be filled.
* ![change](change.png) [3.02.00] Commands that generate list files now include header comments with a short description of the file.  The command file and other information are also now included in comments.
* ![change](change.png) [3.02.00] Most set and fill commands now use the `IfNotFound` parameter, to give more control of error handling.  The Ignore value for the parameter has been added to allow warnings to be ignored, if such a case is expected as possible.  Some commands may generate warnings – set the parameter appropriately to remove the warning.
* ![change](change.png) [3.02.00] The main interface has been simplified to be more similar to TSTool.  Features to manage full datasets have been disabled but may be enabled in the future.
* ![change](change.png) [3.02.00] Where appropriate, menu items have been prefixed with “1: “, “2: “, etc. to indicate that related commands are generally used in a sequence.  For example, it may be necessary to read a water rights file in order to set time series using the rights.
* ![remove](remove.png) [3.03.00] The `FillWellStationsFromHydroBase()` command has been removed – its capabilities are included in other fill commands, and the change removes redundant processing and allows for better error handling.
* ![new](new.png) [3.03.00] Enable the [`LimitWellDemandTSMonthlyToRights`](../command-ref/LimitWellDemandTSMonthlyToRights/LimitWellDemandTSMonthlyToRights.md) command.
* ![new](new.png) [3.03.00] Add the [`SortDiversionDemandTSMonthly`](../command-ref/SortDiversionDemandTSMonthly/SortDiversionDemandTSMonthly.md) command.
* ![new](new.png) [3.03.00] Add the [`SortWellDemandTSMonthly`](../command-ref/SortWellDemandTSMonthly/SortWellDemandTSMonthly.md) command.
* ![new](new.png) [3.03.00] Add the [`FillRiverNetworkNode`](../command-ref/FillRiverNetworkNode/FillRiverNetworkNode.md) command.
* ![new](new.png) [3.03.00] Add the [`SetWellDemandTSMonthlyConstant`](../command-ref/SetWellDemandTSMonthlyConstant/SetWellDemandTSMonthlyConstant.md) command.
* ![new](new.png) [3.02.00] Commands have been updated to use new command status error handling, similar to the TSTool software.  Problems (if any are detected) and corresponding recommendations are noted for each command.
