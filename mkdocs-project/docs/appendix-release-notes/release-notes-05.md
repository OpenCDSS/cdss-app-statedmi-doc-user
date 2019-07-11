# StateDMI / Release Notes / Version 5 #

* [Changes in Version 5.00.00](#changes-in-version-50000)

----------

## Changes in Version 5.00.00 ##

* ![change](change.png) [5.00.00] StateDMI on Windows is now distributed with
64-bit Java Runtime Environment (JRE).
The limit on memory used by StateDMI will only be constrained by the memory
available on the computer.
To change the default settings, edit the `C:\Users\user\CDSS\StateDMI-Version\bin\StateDMI.l4j.ini` file.
* ![change](change.png) [5.00.00] StateDMI is now distributed with Java 8.
Improvements in performance and minor user interface changes should be evident.
Significant internal code cleanup has occurred to make the code more maintainable.
* ![change](change.png) [5.00.00] Word/PDF documentation is being transitioned to Markdown/MkDocs
format to provide online navigable and searchable documentation.
Initial online documentation focuses on command reference for commands that have been recently
added or modified.  Full migration of documentation is expected to occur in the next few releases.
	+ See the ***Help*** menu for links to online documentation.
	+ Documentation specific to the software version is displayed if available and otherwise
	the latest documentation is shown.
	+ Command editors are being updated to add a ***Help*** button that displays the command's documentation.
* ![change](change.png) [5.00.00] Commands to process wells have been updated to
allow well collections to be specified as a list of well WDIDs and/or well permit "receipt" number.
This reflects changes in data and methodology whereby well identifiers can be specified by
modelers rather than parcel identifiers, thereby simplifying modeling input.
Other commands such as [`ReadTableFromDBF`](../command-ref/ReadTableFromDBF/ReadTableFromDBF.md) can be used
to read spatial data files and implement tests.
Refer to documentation confirm understanding of the approach for each data file.
	* [`ReadCropPatternTSFromHydroBase`](../command-ref/ReadCropPatternTSFromHydroBase/ReadCropPatternTSFromHydroBase.md) - **under development**
	* [`ReadIrrigationPracticeTSFromHydroBase`](../command-ref/ReadIrrigationPracticeTSFromHydroBase/ReadIrrigationPracticeTSFromHydroBase.md) - **under development**
	* [`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md)
	* [`SetWellAggregate`](../command-ref/SetWellAggregate/SetWellAggregate.md)
	* [`SetWellAggregateFromList`](../command-ref/SetWellAggregateFromList/SetWellAggregateFromList.md)
	* [`SetWellSystem`](../command-ref/SetWellSystem/SetWellSystem.md)
	* [`SetWellSystemFromList`](../command-ref/SetWellSystemFromList/SetWellSystemFromList.md)
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
