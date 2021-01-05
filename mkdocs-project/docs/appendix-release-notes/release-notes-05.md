# StateDMI / Release Notes / Version 5 #

* [Changes in Version 5.00.06](#changes-in-version-50006)
* [Changes in Version 5.00.05](#changes-in-version-50005)
* [Changes in Version 5.00.04](#changes-in-version-50004)
* [Changes in Version 5.00.00 - 5.00.03](#changes-in-version-50000-50003)
* [Release notes for all versions](release-notes.md)

----------

## Changes in Version 5.00.06 ##

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
* ![new](new.png) [5.00.06] Add [datastore documentation](../datastore-ref/overview.md) similar to TSTool.

## Changes in Version 5.00.05 ##

* ![bug](bug.png) [5.00.05] The
[`ReadCropPatternTSFromParcels`](../command-ref/ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md) command
has been fixed to fill missing data with zeros for years with irrigated lands data,
determined from the parcels for all locations.
* ![new](new.png) [5.00.05] Add 
[`CompareCropPatternTSFiles`](../command-ref/CompareCropPatternTSFiles/CompareCropPatternTSFiles.md) command to
streamline comparisons of different versions of files

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
