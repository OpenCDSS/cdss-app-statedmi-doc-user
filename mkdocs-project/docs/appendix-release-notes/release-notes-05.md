# StateDMI / Release Notes / Version 5 #

* [Changes in Version 5.1.11](#changes-in-version-5011)
* [Changes in Version 5.0.11](#changes-in-version-5011)
* [Changes in Version 5.0.10](#changes-in-version-5010)
* [Changes in Version 5.0.9](#changes-in-version-509)
* [Changes in Version 5.0.8](#changes-in-version-508)
* [Changes in Version 5.00.07](#changes-in-version-50007)
* [Changes in Version 5.00.06](#changes-in-version-50006)
* [Changes in Version 5.00.05](#changes-in-version-50005)
* [Changes in Version 5.00.04](#changes-in-version-50004)
* [Changes in Version 5.00.00 - 5.00.03](#changes-in-version-50000-50003)
* [Release notes for all versions](release-notes.md)

----------

## Changes in Version 5.1.1 ##

* ![bug](bug.png) [5.1.1] Update the
[`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) command so that
a water right is only output once for a model location.
The log file indicates duplicates that are ignored.
* ![change](change.png) [5.1.1] Update the location of online documentation to OpenCDSS `https` address.

## Changes in Version 5.1.0 ##

* ![change](change.png) [5.1.0] Cumulative production release for new features described below.

## Changes in Version 5.0.11 ##

* ![bug](bug.png) [5.0.11] Update the
[`ReadIrrigationPracticeTSFromParcels`](../command-ref/ReadIrrigationPracticeTSFromParcels/ReadIrrigationPracticeTSFromParcels.md)
command:
	+ Use the same logic as
	[`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md)
	command for setting total area, including updating the parcel data to indicate model node, etc.
	+ Logic for processing ground and surface water area has been optimized,
	with additional checks to confirm data integrity.
	+ Use the [`WriteParcelsToFile`](../command-ref/WriteParcelsToFile/WriteParcelsToFile.md) command
	to print parcel data for troubleshooting.
* ![change](change.png) [5.0.11] Update the
[`ReadCropPatternTSFromStateCU`](../command-ref/ReadCropPatternTSFromStateCU/ReadCropPatternTSFromStateCU.md) command
to have `Tolerance` parameter to compare total area with irrigation practice time series.
* ![change](change.png) [5.0.11] Do not allow
[`ReadIrrigationPracticeTSFromParcels`](../command-ref/ReadIrrigationPracticeTSFromParcels/ReadIrrigationPracticeTSFromParcels.md) and
[`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md) to be used in the
same command file because they manage data that would interfere with each other
* ![change](change.png) [5.0.11] Update the following commands to indicate when parcel data were set/filled,
for use with the [`WriteParcelsToFile`](../command-ref/WriteParcelsToFile/WriteParcelsToFile.md) command:
	+ [`FillIrrigationPracticeTSAcreageUsingWellRights`](../command-ref/FillIrrigationPracticeTSAcreageUsingWellRights/FillIrrigationPracticeTSAcreageUsingWellRights.md)
	+ [`FillIrrigationPracticeTSInterpolate`](../command-ref/FillIrrigationPracticeTSInterpolate/FillIrrigationPracticeTSInterpolate.md)
	+ [`FillIrrigationPracticeTSRepeat`](../command-ref/FillIrrigationPracticeTSRepeat/FillIrrigationPracticeTSRepeat.md)
	+ [`SetIrrigationPracticeTSFromList`](../command-ref/SetIrrigationPracticeTSFromList/SetIrrigationPracticeTSFromList.md)
	(also add `RecalculateTotal` parameter to force recalculation of total area)
	+ [`SetIrrigationPracticeTS`](../command-ref/SetIrrigationPracticeTS/SetIrrigationPracticeTS.md)
	+ [`SetIrrigationPracticeTSSprinklerAcreageFromList`](../command-ref/SetIrrigationPracticeTSSprinklerAcreageFromList/SetIrrigationPracticeTSSprinklerAcreageFromList.md)
* ![change](change.png) [5.0.11] Update the
[`SetIrrigationPracticeTS`](../command-ref/ReadCropPatternTSFromStateCU/ReadCropPatternTSFromStateCU.md) command
* ![change](change.png) [5.0.11] Update the
[`SetIrrigationPracticeTSTotalAcreageToCropPatternTSTotalAcreage`](../command-ref/SetIrrigationPracticeTSTotalAcreageToCropPatternTSTotalAcreage/SetIrrigationPracticeTSTotalAcreageToCropPatternTSTotalAcreage.md) command
to have `CheckOnly` parameter to allow using the command to check crop pattern time series and irrigation practice time series total area.
* ![change](change.png) [5.0.11] Update the
[`WriteIrrigationPracticeTSToStateCU`](../command-ref/WriteIrrigationPracticeTSToStateCU/WriteIrrigationPracticeTSToStateCU.md) command
to have `RecalculateTotal` parameter, to recalculate the total acres from parts
* ![change](change.png) [5.0.11] Update the
[`WriteParcelsToFile`](../command-ref/WriteParcelsToFile/WriteParcelsToFile.md) command
to indicate when set and fill commands have been run for crop pattern time series and irrigation practice time series

## Changes in Version 5.0.10 ##

* ![bug](bug.png) [5.0.10] Fix bug in
[`ReadParcelsFromHydroBase`](../command-ref/ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command
that was not identifying all unmodeled wells (those not in groundwater-only collection list but are a supply
to involved parcels).
* ![bug](bug.png) [5.0.10] The
[`ReadIrrigationPracticeTSFromParcels`](../command-ref/ReadIrrigationPracticeTSFromParcels/ReadIrrigationPracticeTSFromParcels.md) and
[`WriteParcelsToFile`](../command-ref/WriteParcelsToFile/WriteParcelsToFile.md) commands have been updated
to correctly determine the fraction of parcel area for D&W surface water supply,
which is multiplied by the groundwater fraction (1/# wells for parcel).
The previous version always used (1/# ditches for parcel).
The current version uses (1/# ditches for parcel where ditch is in the model node as a single ditch or in collection list).
* ![change](change.png) [5.0.10] Improved user interface and warnings based on feedback and experience.
* ![change](change.png) [5.0.10] Update the
[`CheckCropPatternTS`](../command-ref/CheckCropPatternTS/CheckCropPatternTS.md) command to check that each
year of data is either read from HydroBase or is provided by set or fill command.
* ![change](change.png) [5.0.10] Update the
[`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) command, as follows:
	+ Defaults to water right use types of `IRR` and `ALL` (`ALL` has been added), 
	in order to determine candidate water rights that are used for irrigation
	+ The water right uses can now be specified with the `IncludeUses` parameter.
	+ Fix issues with filter that was resulting in some rights being left out.
	+ **This version processes StateCU location list.  Processing StateMod diversion and well list is under development.**

## Changes in Version 5.0.9 ##

* ![change](change.png) [5.0.9] Update the
[`ReadParcelsFromHydroBase`](../command-ref/ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command:
	+ Add `ExcludeYears` parameter, to omit years with bad data in HydroBase, which avoids the 
	[`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md) command
	setting zero in the excluded years.
	+ When processing groundwater-only model node,
	when reading associated surface supply data, the water district to read cached data is
	determined from both digits 2-3 of the parcel and the well WD.
	This help ensure that valid surface supplies are not ignored.
	Surface supplies detected for a parcel result in the parcel being omitted from groundwater-only WEL node
	for crop pattern time series file.
	+ Handle groundwater supplies that are not included in WEL aggregate/system and D&W and are therefore
	not included in the model dataset.  The wells will impact the fractional area computations
	but the related fractional area will not be added to crop pattern or irrigation practice time series.
* ![change](change.png) [5.0.9] Update the
[`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md) command
to ignore parcel/supply data that are not included in the dataset,
as determined by the
[`ReadParcelsFromHydroBase`](../command-ref/ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command.
* ![change](change.png) [5.0.9] Update the
[`ReadIrrigationPracticeTSFromParcels`](../command-ref/ReadIrrigationPracticeTSFromParcels/ReadIrrigationPracticeTSFromParcels.md) command
to ignore parcel/supply data that are not included in the dataset,
as determined by the
[`ReadParcelsFromHydroBase`](../command-ref/ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command.
* ![change](change.png) [5.0.9] Update the
[`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) command
to have `Approach=UseParcels` parameter and read using parcels data that
were read using the
[`ReadParcelsFromHydroBase`](../command-ref/ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command.

## Changes in Version 5.0.8 ##

* ![bug](bug.png) [5.0.8] Update the
[`ReadParcelsFromHydroBase`](../command-ref/ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) command
to read surface water supplies for groundwater-only model nodes,
necessary because some ditches are excluded from the dataset and are therefore not included in
D&W model nodes.
* ![change](change.png) [5.0.8] Change the program version number to not use zero-padded parts.
The leading zero was causing an issue with the `launch4j` Java runner when version reached a value of `08`
because version parts are interpreted as hexadecimal.

## Changes in Version 5.00.07 ##

* ![bug](bug.png) [5.00.07] Implement changes to resolve additional issues with `*.cds` and `*.ipy`
processing for ArkDSS dataset.  Very few differences exist when compared with previous StateDMI.
Troubleshooting features have also been enhanced.
* ![change](change.png) [5.00.07] Update the 
[`ReadCropPatternTSFromHydroBase`](../command-ref/ReadCropPatternTSFromHydroBase/ReadCropPatternTSFromHydroBase.md) command
to not warn if parcels are missing as long as
[`SetCropPatternTS`](../command-ref/SetCropPatternTS/SetCropPatternTS.md) or
[`SetCropPatternTSFromList`](../command-ref/SetCropPatternTSFromList/SetCropPatternTSFromList.md) commands
provide data
* ![change](change.png) [5.00.07] Update the 
[`WriteParcelsToFile`](../command-ref/WriteParcelsToFile/WriteParcelsToFile.md) command to fully represent
model node, parcel, and water supply data for troubleshooting

## Changes in Version 5.00.06 ##

* ![change](change.png) [5.00.06] Multiple minor changes to ensure that automated tests run without warnings.
* ![change](change.png) [5.00.06] Update the 
[***Quality Control***](../quality-control/quality-control.md) chapter to reflect recent enhancements
related to testing.
* ![change](change.png) [5.00.06] Update the
[***Select HydroBase***](../getting-started/getting-started.md#select-hydrobase-dialog) dialog
to automatically handle default datastore definitions, to minimize need for datastore configuration files.
* ![change](change.png) [5.00.06] Update the 
[`#` comment](../command-ref/Comment/Comment.md) command with
special `#@require` comment to check application and database versions,
useful for testing and workflow quality control.
* ![change](change.png) [5.00.06] Update the 
[`CreateRegressionTestCommandFile`](../command-ref/CreateRegressionTestCommandFile/CreateRegressionTestCommandFile.md) command
and testing framework to handle requirements evaluation
* ![change](change.png) [5.00.06] Update the 
[`RunCommands`](../command-ref/RunCommands/RunCommands.md) command to
check `#@require` comments so that automated tests for incompatible
configurations can be skipped to avoid false test failures.
* ![change](change.png) [5.00.06] Update the 
[`SetCropPatternTS`](../command-ref/SetCropPatternTS/SetCropPatternTS.md) command editor
to more clearly indicate which parameters are used with different StateDMI versions.
Also change so that `IrrigationMethod` and `SupplyType` are optional so that the
command can be used with old or new StateDMI command files.
* ![new](new.png) [5.00.06] Add [datastore documentation](../datastore-ref/overview.md) similar to TSTool.
* ![new](new.png) [5.00.06] Add 
[`CompareIrrigationPracticeTSFiles`](../command-ref/CompareIrrigationPracticeTSFiles/CompareIrrigationPracticeTSFiles.md) command to
streamline comparisons of different versions of files.

## Changes in Version 5.00.05 ##

* ![bug](bug.png) [5.00.05] The
[`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md) command
has been fixed to fill missing data with zeros for years with irrigated lands data,
determined from the parcels for all locations.
* ![new](new.png) [5.00.05] Add 
[`CompareCropPatternTSFiles`](../command-ref/CompareCropPatternTSFiles/CompareCropPatternTSFiles.md) command to
streamline comparisons of different versions of files.

## Changes in Version 5.00.04 ##

* ![change](change.png) [5.00.04] New commands that require HydroBase 20200720 design
will warn if an older version of HydroBase is used.
* ![new](new.png) [5.00.04] Add 
[`CheckIrrigatedLands`](../command-ref/CheckIrrigatedLands/CheckIrrigatedLands.md) command to
check parcels from irrigated lands table that was read from spatial data
* ![new](new.png) [5.00.04] Add 
[`ReadParcelsFromIrrigatedLands`](../command-ref/ReadParcelsFromIrrigatedLands/ReadParcelsFromIrrigatedLands.md) command to
read parcels from irrigated lands table that was read from spatial data
* ![new](new.png) [5.00.04] Add 
[`SetParcel`](../command-ref/SetParcel/SetParcel.md),
[`SetParcelGroundWaterSupply`](../command-ref/SetParcelGroundWaterSupply/SetParcelGroundWaterSupply.md),
[`SetParcelSurfaceWaterSupply`](../command-ref/SetParcelSurfaceWaterSupply/SetParcelSurfaceWaterSupply.md), and
commands to edit parcel data, necessary when HydroBase data are not accurate.

## Changes in Version 5.00.00 - 5.00.03 ##

* ![change](change.png) [5.00.00] StateDMI on Windows is now distributed with
64-bit Java Runtime Environment (JRE).
The limit on memory used by StateDMI will only be constrained by the memory
available on the computer.
To change the default settings, edit the `C:\Users\user\CDSS\StateDMI-Version\bin\StateDMI.l4j.ini` file.
* ![change](change.png) [5.00.00] StateDMI is now distributed with Java 8.
Improvements in performance and minor user interface changes should be evident.
Significant internal code cleanup has occurred to make the code more maintainable.
* ![change](change.png) [5.00.00] Word/PDF documentation have been transitioned to Markdown/MkDocs
format to provide online navigable and searchable documentation.
	+ See the ***Help*** menu for links to online documentation.
	+ Documentation specific to the software version is displayed if available and otherwise
	the latest documentation is shown.
	+ Command editors have been updated to add a ***Help*** button that displays the command's documentation.
* ![change](change.png) [5.00.00] Editors for all commands that use files or folders now default to relative path
and the buttons for selecting files and changing between relative/absolute path have been simplified.
* ![change](change.png) [5.00.00] Commands to process wells have been updated to
allow well collections to be specified as a list of well WDIDs and/or well permit "receipt" number.
This reflects changes in data and methodology whereby well identifiers can be specified by
modelers rather than parcel identifiers, thereby simplifying modeling input.
Other commands such as [`ReadTableFromDBF`](../command-ref/ReadTableFromDBF/ReadTableFromDBF.md) can be used
to read spatial data files and implement tests.
Refer to documentation confirm understanding of the approach for each data file.
	* [`ReadCropPatternTSFromHydroBase`](../command-ref/ReadCropPatternTSFromHydroBase/ReadCropPatternTSFromHydroBase.md) - **being phased out**
	* [`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md)
	* [`ReadIrrigationPracticeTSFromHydroBase`](../command-ref/ReadIrrigationPracticeTSFromHydroBase/ReadIrrigationPracticeTSFromHydroBase.md) - **being phased out**
	* [`ReadIrrigationPracticeTSFromParcels`](../command-ref/ReadIrrigationPracticeTSFromParcels/ReadIrrigationPracticeTSFromParcels.md)
	* [`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md)
	* [`SetWellAggregate`](../command-ref/SetWellAggregate/SetWellAggregate.md)
	* [`SetWellAggregateFromList`](../command-ref/SetWellAggregateFromList/SetWellAggregateFromList.md)
	* [`SetWellSystem`](../command-ref/SetWellSystem/SetWellSystem.md)
	* [`SetWellSystemFromList`](../command-ref/SetWellSystemFromList/SetWellSystemFromList.md)
* ![new](new.png) [5.00.00] Add 
[`SplitStateModReport`](../command-ref/SplitStateModReport/SplitStateModReport.md) command to split StateMod
report file into separate files
* ![new](new.png) [5.00.02] New commands have been added to streamline parcel-related data processing:
	+ [`ReadParcelsFromHydroBase`](../command-ref/ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md) - reads crop parcels and related supply into parcels
	+ [`WriteParcelsToFile`](../command-ref/WriteParcelsToFile/WriteParcelsToFile.md) - creates report summarizing parcel/supply data
	+ [`CheckParcels`](../command-ref/CheckParcels/CheckParcels.md) - checks parcel data
	+ [`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md) - reads crop pattern time series from parcels
	+ [`ReadIrrigationPracticeTSFromParcels`](../command-ref/ReadIrrigationPracticeTSFromParcels/ReadIrrigationPracticeTSFromParcels.md) - reads irrigation practice time series from parcels
* ![new](new.png) [5.00.00] Lowercase file extension `statedmi` is supported and is now the default
when saving a new command file.
* ![new](new.png) [5.00.00] The ***View / Command File Diff*** menu has been added to compare the
current command file contents with the previous saved version.
* ![new](new.png) [5.00.00] Many general commands have been added to facilitate advanced
workflows and automated testing.  The following commands have have been added and behave
similar to TSTool software:
	+ ***Commands / Datastore Processing*** - query databases
	+ ***Commands / Spatial Processing*** - output spatial formats
	+ ***Commands / Spreadsheet Processing*** - read and write Excel files
	+ ***Commands (Table)*** - process tables
	+ ***Commands / General / File Handling*** - additional commands such as [`WebGet`](../command-ref/WebGet/WebGet.md) command
	+ ***Commands / General / Logging and Messaging*** - add [`Message`](../command-ref/Message/Message.md) command
	+ ***Commands / General / Running and Properties*** - commands to handle processor properties
* ![new](new.png) [5.00.00] Datastores have been enabled and HydroBase datastores are available by default:
	+ Local HydroBase database uses datastore name `HydroBase` and allows
	commands like [`ReadTableFromDataStore`](../command-ref/ReadTableFromDataStore/ReadTableFromDataStore.md)
	to query the database.
	The specific HydroBase database version must be configured in the datastore configuration file.
	+ HydroBase REST web services are configured with name `HydroBaseWeb` and can
	be accessed as an alternative to local database for some commands, for example
	[`ReadDiversionRightsFromHydroBase`](../command-ref/ReadDiversionRightsFromHydroBase/ReadDiversionRightsFromHydroBase.md).
* ![new](new.png) [5.00.00] Secondary windows center on the main window.
Previously windows would display in the left-most window.
Now windows display in the same display as the StateMod main window.
* ![new](new.png) [5.00.00] Command file history is available in the ***File / Open / Command File...*** menu.
* ![new](new.png) [5.00.00] User configuration files have been added:
	+ The `.statedmi` folder under the user's files hold configuration file for the StateDMI major version.
	+ Datastore configuration files can be added to the `.statedmi/N/datastores` folder to add connections to
	additional databases, or override the datastore configuration provided with the installer.
	+ The StateDMI configuration file `.statedmi/N/system/StateDMI.cfg` can be edited to 
	override the datastore configuration provided with the installer.
