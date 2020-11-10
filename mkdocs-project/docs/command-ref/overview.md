# StateDMI / Command Reference / Overview #

**This documentation is in draft format and will be updated in the future.  Some of the content is from TSTool.**

This reference section of the documentation provides information about StateDMI commands,
listed in groups consistent with the StateDMI software menus.
If necessary, use the documentation ***Search*** tool or the ***Find*** tool for the
web browser to find a specific command or topic.

**Reference documentation for commands is being transferred from the original Word versions.
Commands that don't have a description after the name do not have documentation included here.**

* [Command Syntax Overview](#command-syntax-overview)
* [Command List](#command-list) - alphabetical list of commands (**is at the end of this section**)
* StateCU Commands - **need to convert documentation**
* StateMod Commands - **need to convert documentation**
* [Topic Area Commands](#topic-area-commands)
	+ [Datastore Processing](#datastore-processing) - read/write database data
	+ [Output File Processing](#output-file-processing) - process output model output files
	+ [Spatial Processing](#spatial-processing) - read/write spatial data
	+ [Spreadsheet Processing](#spreadsheet-processing) - read/write spreadsheet files
* [General Commands](#general-commands)
	+ [General - Comments](#general-comments) - insert comments
	+ [General - File Handling](#general-file-handling) - manipulate files
	+ [General - Logging and Messaging](#general-logging-and-messaging) - handle log files and other messages
	+ [General - Running and Properties](#general-running-and-properties) - run programs and control logic
	+ [General - Test Processings](#general-test-processing) - automated tests for quality control
* [Table Commands](#table-commands)
	+ [Create, Copy, Free Table](#create-copy-free-table) - basic table object management
	+ [Read Table](#read-table) - read tables from files, databases, and web services
	+ [Append, Join Tables](#append-join-tables) - append and join tables
	+ [Table, Time Series Processing](#table-time-series-processing) - translate tables to/from time series
	+ [Manipulate Tables](#manipulate-tables) - manipulate table data
	+ [Analyze Table](#analyze-table) - analyze table data
	+ [Output Table](#output-table) - output (write) tables to files and databases
	+ [Running and Properties](#running-and-properties) - use table data to control logic

---------------------------

## Command Syntax Overview ##

StateDMI command files contain a list of commands, one command per line.
These commands are processed in sequence from top to bottom.

Each command adheres to the syntax:

```text
CommandName(ParameterName1="ParameterValue1",ParameterName2="ParameterValue2",...)
```

The following are guidelines for commands:

1. Commands always follow the convention of command name at start with a list of named parameters in parentheses.
The only exceptions are:
	1. Comments starting with [`#`](Comment/Comment.md).
	2. Block comments [`/*`](CommentBlockStart/CommentBlockStart.md) and
	[`*/`](CommentBlockEnd/CommentBlockEnd.md) that surround one or more command lines.
	3. Command such as [`Exit`](Exit/Exit.md), which will always have empty list of parameters in the parentheses.
2. Commands are generally not case-specific although the StateDMI software enforces standards.
3. Command and parameter names use mixed case where the first letter of each word is capitalized.
4. Parameter values may optionally be surrounded by double quotes, regardless of type.
Double quotes are required in some cases to protect spaces and other characters within quotes.
5. Each command must exist on a single line.
6. Spaces at the front of a command for indentation are currently not allowed.
This limitation is planned to be removed in the future.
Tabs used for indentation are discouraged and will likely be prohibited because tab width is ambiguous between different users and tools.
Spaces will be the preferred method of indentation.
7. Empty (blank) lines are allowed and will be handled as [`Empty`](Empty/Empty.md) commands.
8. Unknown commands are handled as [`UnknownCommand`](UnknownCommand/UnknownCommand.md) commands.

## StateCU Commands ##

**To be completed.**

## StateMod Commands ##

**To be completed.**

## Topic Area Commands ##

The following commands are grouped into specific topic areas.

### Datastore Processing ###

These commands handle reading and writing time series and other data from datastores, in particular databases.
Utility commands for executing SQL and creating a data dictionary are also provided.

* [`ReadTableFromDataStore`](ReadTableFromDataStore/ReadTableFromDataStore.md) - read a table from a datastore

### Output File Processing ###

These commands process output files (beyond the functionality of commands in other sections):

* [`SplitStateModReport`](SplitStateModReport/SplitStateModReport.md) - split a StateMod output file into separate files

### Spatial Processing ###

* [`WriteTableToGeoJSON`](WriteTableToGeoJSON/WriteTableToGeoJSON.md) - write a table to a GeoJSON file
* [`WriteTableToShapefile`](WriteTableToShapefile/WriteTableToShapefile.md) - write a table to a shapefile

### Spreadsheet Processing ###

* [`NewExcelWorkbook`](NewExcelWorkbook/NewExcelWorkbook.md) - create a new Excel workbook file
* [`ReadExcelWorkbook`](ReadExcelWorkbook/ReadExcelWorkbook.md) - read Excel workbook file
* [`ReadTableFromExcel`](ReadTableFromExcel/ReadTableFromExcel.md) - read a table from an Excel workbook file
* [`ReadTableCellsFromExcel`](ReadTableCellsFromExcel/ReadTableCellsFromExcel.md) - read table cells from Excel worksheet
* [`ReadPropertiesFromExcel`](ReadPropertiesFromExcel/ReadPropertiesFromExcel.md) - read processor properties from Excel
* [`SetExcelCell`](SetExcelCell/SetExcelCell.md) - set data in an Excel cell
* [`SetExcelWorksheetViewProperties`](SetExcelWorksheetViewProperties/SetExcelWorksheetViewProperties.md) - set Excel worksheet view properties
* [`WriteTableToExcel`](WriteTableToExcel/WriteTableToExcel.md) - write a table to an Excel workbook file
* [`WriteTableCellsToExcel`](WriteTableCellsToExcel/WriteTableCellsToExcel.md) - write table row cells to an Excel worksheet
* [`CloseExcelWorkbook`](CloseExcelWorkbook/CloseExcelWorkbook.md) - close Excel workbook that is open

## General Commands ##

General commands perform tasks that are general in nature,
meaning they are not specific to processing time series, tables, or other specific data types.

### General - Comments ###

These commands are used to insert comments into command files.

* [`#` comment](Comment/Comment.md) - single line comment
* [`\*` comment block start](CommentBlockStart/CommentBlockStart.md) - start of multi-line comment block
* [`\*` comment block end](CommentBlockEnd/CommentBlockEnd.md) - end of multi-line comment block

### General - File Handling ###

These commands provide general file handling capabilities.

* [`ListFiles`](ListFiles/ListFiles.md) - list files in a folder
* [`FTPGet`](FTPGet/FTPGet.md) - download a file from an FTP site
* [`WebGet`](WebGet/WebGet.md) - download a file from a URL
* [`RemoveFile`](RemoveFile/RemoveFile.md) - remove a file
* [`UnzipFile`](UnzipFile/UnzipFile.md) - unzip the contents of a zip file

### General - Logging and Messaging ###

These commands handle run-time configuration of logging and sending messages.

* [`Message`](Message/Message.md) - output a message to the log file
* [`SetDebugLevel`](SetDebugLevel/SetDebugLevel.md) - set the debug level for logging
* [`SetWarningLevel`](SetWarningLevel/SetWarningLevel.md) - set the warning level for logging
* [`StartLog`](StartLog/StartLog.md) - (re)start the log file

### General - Running and Properties ###

These commands provide general capabilities to control running commands, including running programs external to StateDMI and
handling processor properties (used with `${Property}`).

* [`ReadPropertiesFromFile`](ReadPropertiesFromFile/ReadPropertiesFromFile.md) - read processor properties from a file
* [`SetProperty`](SetProperty/SetProperty.md) - set a processor property value
* [`FormatDateTimeProperty`](FormatDateTimeProperty/FormatDateTimeProperty.md) - format a date/time processor property
* [`FormatStringProperty`](FormatStringProperty/FormatStringProperty.md) - format a string processor property
* [`WritePropertiesToFile`](WritePropertiesToFile/WritePropertiesToFile.md) - write processor properties to a file
* [`RunCommands`](RunCommands/RunCommands.md) - run a TSTool command file
* [`RunProgram`](RunProgram/RunProgram.md) - run a program
* [`RunPython`](RunPython/RunPython.md) - run a Python a program
* [`RunR`](RunR/RunR.md) - run an R script
* [`Exit`](Exit/Exit.md) - stop processing commands
* [`SetWorkingDir`](SetWorkingDir/SetWorkingDir.md) - set the working directory (folder) for following commands
* [`Empty`](Empty/Empty.md) - empty (blank) line
* [`UnknownCommand`](UnknownCommand/UnknownCommand.md) - unknown command

### General - Test Processing ###

These commands are used to run automated tests, in particular when running the full suite of tests.

* [`CompareFiles`](CompareFiles/CompareFiles.md) - compare files to detect whether they are the same or different
* [`CreateRegressionTestCommandFile`](CreateRegressionTestCommandFile/CreateRegressionTestCommandFile.md) - create a regression test suite command file
* [`StartRegressionTestResultsReport`](StartRegressionTestResultsReport/StartRegressionTestResultsReport.md) - start the regression test results report file to record output of tests

## Table Commands ##

Table commands are used to process tabular data, for example:

* database tables
* Excel worksheets
* delimited and other data files

Tables are converted to an in-memory representation where each column stores a single data type.
Tables and time series can be converted back and forth, as needed.

### Create, Copy, Free Table ###

These commands create, copy, and free tables.

* [`NewTable`](NewTable/NewTable.md) - create a new table
* [`CopyTable`](CopyTable/CopyTable.md) - copy a table to a new table
* [`FreeTable`](FreeTable/FreeTable.md) - free memory resources for a table

### Read Table ###

These commands read tables from various sources.

* [`ReadTableFromDataStore`](ReadTableFromDataStore/ReadTableFromDataStore.md) - read a table from a datastore
* [`ReadTableFromDBF`](ReadTableFromDBF/ReadTableFromDBF.md) - read a table from a DBF file
* [`ReadTableFromDelimitedFile`](ReadTableFromDelimitedFile/ReadTableFromDelimitedFile.md) - read a table from a delimited file
* [`ReadTableFromExcel`](ReadTableFromExcel/ReadTableFromExcel.md) - read a table from an Excel workbook file
* [`ReadTableFromFixedFormatFile`](ReadTableFromFixedFormatFile/ReadTableFromFixedFormatFile.md) - read a table from a fixed-format file

### Append, Join Tables ###

These commands append and join tables.

* [`AppendTable`](AppendTable/AppendTable.md) - append a table to another table
* [`JoinTables`](JoinTables/JoinTables.md) - join two tables

### Manipulate Tables ###

These commands manipulate tables.

* [`InsertTableColumn`](InsertTableColumn/InsertTableColumn.md) - insert a column in a table
* [`DeleteTableColumns`](DeleteTableColumns/DeleteTableColumns.md) - delete columns from a table
* [`DeleteTableRows`](DeleteTableRows/DeleteTableRows.md) - delete rows from a table
* [`FormatTableDateTime`](FormatTableDateTime/FormatTableDateTime.md) - format a date/time in a table
* [`FormatTableString`](FormatTableString/FormatTableString.md) - format a string in a table
* [`ManipulateTableString`](ManipulateTableString/ManipulateTableString.md) - manipulate a string in a table
* [`SetTableValues`](SetTableValues/SetTableValues.md) - set values in a table
* [`SplitTableColumn`](SplitTableColumn/SplitTableColumn.md) - split table column into multiple columns
* [`TableMath`](TableMath/TableMath.md) - perform simple math on table columns
* [`InsertTableRow`](InsertTableRow/InsertTableRow.md) - insert a row in a table
* [`SortTable`](SortTable/SortTable.md) - sort table contents
* [`SplitTableRow`](SplitTableRow/SplitTableRow.md) - split a table row into multiple rows

### Analyze Table ###

These commands analyze tables.

* [`CompareTables`](CompareTables/CompareTables.md) - compare tables to detect whether they are the same or different

### Output Table ###

These commands write tables to various formats.

* [`WriteTableToDelimitedFile`](WriteTableToDelimitedFile/WriteTableToDelimitedFile.md) - write a table to a delimited file
* [`WriteTableToExcel`](WriteTableToExcel/WriteTableToExcel.md) - write a table to an Excel workbook file
* [`WriteTableToHTML`](WriteTableToHTML/WriteTableToHTML.md) - write a table to an HTML file

### Running and Properties ###

These commands handle table properties, which are used to control run logic.

* [`SetPropertyFromTable`](SetPropertyFromTable/SetPropertyFromTable.md) - set a processor property from a table

## Command List ##

The following table contains every command and provides summary information that
is useful to software users and developers.
"Documentation Migrated" indicates whether the original Word version of documentation
have been migrated to the new online version (this documentation).

|**Command**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Description**|**Doc. Status**|**Def. to Rel. Path**|
|-------------------------------------------------------------------------------------------------------------|---------------------------------|:----------------------:|----|
|[`#` comment](Comment/Comment.md)                                                                               | Single line comment.             |Migrated?||
|[`\*` comment block start](CommentBlockStart/CommentBlockStart.md)                                              | Start of multi-line comment block.|Migrated?||
|[`\*` comment block end](CommentBlockEnd/CommentBlockEnd.md)                                                    | End of multi-line comment block. |Migrated?||
|[`AggregateWellRights`](AggregateWellRights/AggregateWellRights.md)                                             | AggregateWellRights ||
|[`AppendNetwork`](AppendNetwork/AppendNetwork.md)                                                               | AppendNetwork ||
|[`AppendTable`](AppendTable/AppendTable.md)                                                                     | Append a table to another table. |Migrated?||
|[`CalculateDiversionDemandTSMonthly`](CalculateDiversionDemandTSMonthly/CalculateDiversionDemandTSMonthly.md)   | CalculateDiversionDemandTSMonthly ||
|[`CalculateDiversionDemandTSMonthlyAsMax`](CalculateDiversionDemandTSMonthlyAsMax/CalculateDiversionDemandTSMonthlyAsMax.md) | CalculateDiversionDemandTSMonthlyAsMax ||
|[`CalculateDiversionStationEfficiencies`](CalculateDiversionStationEfficiencies/CalculateDiversionStationEfficiencies.md)    | CalculateDiversionStationEfficiencies ||
|[`CalculateStreamEstimateCoefficients`](CalculateStreamEstimateCoefficients/CalculateStreamEstimateCoefficients.md)          | CalculateStreamEstimateCoefficients ||
|[`CalculateWellDemandTSMonthly`](CalculateWellDemandTSMonthly/CalculateWellDemandTSMonthly.md)                  | CalculateWellDemandTSMonthly ||
|[`CalculateWellDemandTSMonthlyAsMax`](CalculateWellDemandTSMonthlyAsMax/CalculateWellDemandTSMonthlyAsMax.md)   | CalculateWellDemandTSMonthlyAsMax ||
|[`CalculateWellStationEfficiencies`](CalculateWellStationEfficiencies/CalculateWellStationEfficiencies.md)      | CalculateWellStationEfficiencies ||
|[`CheckBlaneyCriddle`](CheckBlaneyCriddle/CheckBlaneyCriddle.md)                                                | CheckBlaneyCriddle ||
|[`CheckClimateStations`](CheckClimateStations/CheckClimateStations.md)                                          | CheckClimateStations ||
|[`CheckCropCharacteristics`](CheckCropCharacteristics/CheckCropCharacteristics.md)                              | CheckCropCharacteristics ||
|[`CheckCropPatternTS`](CheckCropPatternTS/CheckCropPatternTS.md)                                                | CheckCropPatternTS ||
|[`CheckCULocations`](CheckCULocations/CheckCULocations.md)                                                      | CheckCULocations ||
|[`CheckDiversionDemandTSMonthly`](CheckDiversionDemandTSMonthly/CheckDiversionDemandTSMonthly.md)               | CheckDiversionDemandTSMonthly ||
|[`CheckDiversionHistoricalTSMonthly`](CheckDiversionHistoricalTSMonthly/CheckDiversionHistoricalTSMonthly.md)   | CheckDiversionHistoricalTSMonthly ||
|[`CheckDiversionRights`](CheckDiversionRights/CheckDiversionRights.md)                                          | CheckDiversionRights ||
|[`CheckDiversionStations`](CheckDiversionStations/CheckDiversionStations.md)                                    | CheckDiversionStations ||
|[`CheckInstreamFlowDemandTSAverageMonthly`](CheckInstreamFlowDemandTSAverageMonthly/CheckInstreamFlowDemandTSAverageMonthly.md)    | CheckInstreamFlowDemandTSAverageMonthly ||
|[`CheckInstreamFlowRights`](CheckInstreamFlowRights/CheckInstreamFlowRights.md)                                 | CheckInstreamFlowRights ||
|[`CheckInstreamFlowStations`](CheckInstreamFlowStations/CheckInstreamFlowStations.md)                           | CheckInstreamFlowStations ||
|[`CheckIrrigationPracticeTS`](CheckIrrigationPracticeTS/CheckIrrigationPracticeTS.md)                           | CheckIrrigationPracticeTS ||
|[`CheckParcels`](CheckParcels/CheckParcels.md)                                                                  | CheckParcels ||
|[`CheckPenmanMonteith`](CheckPenmanMonteith/CheckPenmanMonteith.md)                                             | CheckPenmanMonteith ||
|[`CheckReservoirRights`](CheckReservoirRights/CheckReservoirRights.md)                                          | CheckReservoirRights ||
|[`CheckReservoirStations`](CheckReservoirStations/CheckReservoirStations.md)                                    | CheckReservoirStations ||
|[`CheckRiverNetwork`](CheckRiverNetwork/CheckRiverNetwork.md)                                                   | CheckRiverNetwork ||
|[`CheckStreamEstimateCoefficients`](CheckStreamEstimateCoefficients/CheckStreamEstimateCoefficients.md)         | CheckStreamEstimateCoefficients ||
|[`CheckStreamEstimateStations`](CheckStreamEstimateStations/CheckStreamEstimateStations.md)                     | CheckStreamEstimateStations ||
|[`CheckStreamGageStations`](CheckStreamGageStations/CheckStreamGageStations.md)                                 | CheckStreamGageStations ||
|[`CheckWellDemandTSMonthly`](CheckWellDemandTSMonthly/CheckWellDemandTSMonthly.md)                              | CheckWellDemandTSMonthly ||
|[`CheckWellHistoricalPumpingTSMonthly`](CheckWellHistoricalPumpingTSMonthly/CheckWellHistoricalPumpingTSMonthly.md)    | CheckWellHistoricalPumpingTSMonthly ||
|[`CheckWellRights`](CheckWellRights/CheckWellRights.md)                                                         | CheckWellRights ||
|[`CheckWellStations`](CheckWellStations/CheckWellStations.md)                                                   | CheckWellStations ||
|[`CloseExcelWorkbook`](CloseExcelWorkbook/CloseExcelWorkbook.md)                                                | Close Excel workbook that is open.|Migrated?||
|[`CompareFiles`](CompareFiles/CompareFiles.md)                                                                  | Compare files to detect whether they are the same or different.|Migrated?||
|[`CompareTables`](CompareTables/CompareTables.md)                                                               | Compare tables to detect whether they are the same or different.|Migrated?||
|[`CopyTable`](CopyTable/CopyTable.md)                                                                           | Copy a table to a new table.     |Migrated?||
|[`CreateCropPatternTSForCULocations`](CreateCropPatternTSForCULocations/CreateCropPatternTSForCULocations.md)   | CreateCropPatternTSForCULocations ||
|[`CreateIrrigationPracticeTSForCULocations`](CreateIrrigationPracticeTSForCULocations/CreateIrrigationPracticeTSForCULocations.md)    | CreateIrrigationPracticeTSForCULocations ||
|[`CreateNetworkFromRiverNetwork`](CreateNetworkFromRiverNetwork/CreateNetworkFromRiverNetwork.md)               | CreateNetworkFromRiverNetwork ||
|[`CreateRegressionTestCommandFile`](CreateRegressionTestCommandFile/CreateRegressionTestCommandFile.md)         | CreateRegressionTestCommandFile ||
|[`CreateRiverNetworkFromNetwork`](CreateRiverNetworkFromNetwork/CreateRiverNetworkFromNetwork.md)               | CreateRiverNetworkFromNetwork ||
|[`DeleteTableColumns`](DeleteTableColumns/DeleteTableColumns.md)                                                | Delete columns from a table.     |Migrated?||
|[`DeleteTableRows`](DeleteTableRows/DeleteTableRows.md)                                                         | Delete rows from a table.        |Migrated?||
|[`Empty`](Empty/Empty.md)                                                                                       | Empty (blank) commands line.     |Migrated?||
|[`Exit`](Exit/Exit.md)                                                                                          | Stop processing commands.        |Migrated?||
|[`FillClimateStation`](FillClimateStation/FillClimateStation.md)                                                | FillClimateStation ||
|[`FillClimateStationsFromHydroBase`](FillClimateStationsFromHydroBase/FillClimateStationsFromHydroBase.md)      | FillClimateStationsFromHydroBase ||
|[`FillCropPatternTSConstant`](FillCropPatternTSConstant/FillCropPatternTSConstant.md)                           | FillCropPatternTSConstant ||
|[`FillCropPatternTSInterpolate`](FillCropPatternTSInterpolate/FillCropPatternTSInterpolate.md)                  | FillCropPatternTSInterpolate ||
|[`FillCropPatternTSRepeat`](FillCropPatternTSRepeat/FillCropPatternTSRepeat.md)                                 | FillCropPatternTSRepeat ||
|[`FillCropPatternTSUsingWellRights`](FillCropPatternTSUsingWellRights/FillCropPatternTSUsingWellRights.md)      | FillCropPatternTSUsingWellRights ||
|[`FillCULocation`](FillCULocation/FillCULocation.md)                                                            | FillCULocation ||
|[`FillCULocationClimateStationWeights`](FillCULocationClimateStationWeights/FillCULocationClimateStationWeights.md)    | FillCULocationClimateStationWeights ||
|[`FillCULocationsFromHydroBase`](FillCULocationsFromHydroBase/FillCULocationsFromHydroBase.md)                  | FillCULocationsFromHydroBase ||
|[`FillCULocationsFromList`](FillCULocationsFromList/FillCULocationsFromList.md)                                 | FillCULocationsFromList ||
|[`FillDiversionDemandTSMonthlyAverage`](FillDiversionDemandTSMonthlyAverage/FillDiversionDemandTSMonthlyAverage.md)                | FillDiversionDemandTSMonthlyAverage ||
|[`FillDiversionDemandTSMonthlyConstant`](FillDiversionDemandTSMonthlyConstant/FillDiversionDemandTSMonthlyConstant.md)             | FillDiversionDemandTSMonthlyConstant ||
|[`FillDiversionDemandTSMonthlyPattern`](FillDiversionDemandTSMonthlyPattern/FillDiversionDemandTSMonthlyPattern.md)                | FillDiversionDemandTSMonthlyPattern ||
|[`FillDiversionHistoricalTSMonthlyAverage`](FillDiversionHistoricalTSMonthlyAverage/FillDiversionHistoricalTSMonthlyAverage.md)    | FillDiversionHistoricalTSMonthlyAverage ||
|[`FillDiversionHistoricalTSMonthlyConstant`](FillDiversionHistoricalTSMonthlyConstant/FillDiversionHistoricalTSMonthlyConstant.md) | FillDiversionHistoricalTSMonthlyConstant ||
|[`FillDiversionHistoricalTSMonthlyPattern`](FillDiversionHistoricalTSMonthlyPattern/FillDiversionHistoricalTSMonthlyPattern.md)    | FillDiversionHistoricalTSMonthlyPattern ||
|[`FillDiversionRight`](FillDiversionRight/FillDiversionRight.md)                                                | FillDiversionRight ||
|[`FillDiversionStation`](FillDiversionStation/FillDiversionStation.md)                                          | FillDiversionStation ||
|[`FillDiversionStationsFromHydroBase`](FillDiversionStationsFromHydroBase/FillDiversionStationsFromHydroBase.md)| FillDiversionStationsFromHydroBase ||
|[`FillDiversionStationsFromNetwork`](FillDiversionStationsFromNetwork/FillDiversionStationsFromNetwork.md)      | FillDiversionStationsFromNetwork ||
|[`FillInstreamFlowRight`](FillInstreamFlowRight/FillInstreamFlowRight.md)                                       | FillInstreamFlowRight ||
|[`FillInstreamFlowStation`](FillInstreamFlowStation/FillInstreamFlowStation.md)                                 | FillInstreamFlowStation ||
|[`FillInstreamFlowStationsFromHydroBase`](FillInstreamFlowStationsFromHydroBase/FillInstreamFlowStationsFromHydroBase.md)    | FillInstreamFlowStationsFromHydroBase ||
|[`FillInstreamFlowStationsFromNetwork`](FillInstreamFlowStationsFromNetwork/FillInstreamFlowStationsFromNetwork.md)          | FillInstreamFlowStationsFromNetwork ||
|[`FillIrrigationPracticeTSAcreageUsingWellRights`](FillIrrigationPracticeTSAcreageUsingWellRights/FillIrrigationPracticeTSAcreageUsingWellRights.md)    | FillIrrigationPracticeTSAcreageUsingWellRights ||
|[`FillIrrigationPracticeTSInterpolate`](FillIrrigationPracticeTSInterpolate/FillIrrigationPracticeTSInterpolate.md)          | FillIrrigationPracticeTSInterpolate ||
|[`FillIrrigationPracticeTSRepeat`](FillIrrigationPracticeTSRepeat/FillIrrigationPracticeTSRepeat.md)            | FillIrrigationPracticeTSRepeat ||
|[`FillNetworkFromHydroBase`](FillNetworkFromHydroBase/FillNetworkFromHydroBase.md)                              | FillNetworkFromHydroBase ||
|[`FillReservoirRight`](FillReservoirRight/FillReservoirRight.md)                                                | FillReservoirRight ||
|[`FillReservoirStation`](FillReservoirStation/FillReservoirStation.md)                                          | FillReservoirStation ||
|[`FillReservoirStationsFromHydroBase`](FillReservoirStationsFromHydroBase/FillReservoirStationsFromHydroBase.md)| FillReservoirStationsFromHydroBase ||
|[`FillReservoirStationsFromNetwork`](FillReservoirStationsFromNetwork/FillReservoirStationsFromNetwork.md)      | FillReservoirStationsFromNetwork ||
|[`FillRiverNetworkFromHydroBase`](FillRiverNetworkFromHydroBase/FillRiverNetworkFromHydroBase.md)               | FillRiverNetworkFromHydroBase ||
|[`FillRiverNetworkFromNetwork`](FillRiverNetworkFromNetwork/FillRiverNetworkFromNetwork.md)                     | FillRiverNetworkFromNetwork ||
|[`FillRiverNetworkNode`](FillRiverNetworkNode/FillRiverNetworkNode.md)                                          | FillRiverNetworkNode ||
|[`FillStreamEstimateStation`](FillStreamEstimateStation/FillStreamEstimateStation.md)                           | FillStreamEstimateStation ||
|[`FillStreamEstimateStationsFromHydroBase`](FillStreamEstimateStationsFromHydroBase/FillStreamEstimateStationsFromHydroBase.md)  | FillStreamEstimateStationsFromHydroBase ||
|[`FillStreamEstimateStationsFromNetwork`](FillStreamEstimateStationsFromNetwork/FillStreamEstimateStationsFromNetwork.md)        | FillStreamEstimateStationsFromNetwork ||
|[`FillStreamGageStation`](FillStreamGageStation/FillStreamGageStation.md)                                       | FillStreamGageStation ||
|[`FillStreamGageStationsFromHydroBase`](FillStreamGageStationsFromHydroBase/FillStreamGageStationsFromHydroBase.md)    | FillStreamGageStationsFromHydroBase ||
|[`FillStreamGageStationsFromNetwork`](FillStreamGageStationsFromNetwork/FillStreamGageStationsFromNetwork.md)   | FillStreamGageStationsFromNetwork ||
|[`FillWellDemandTSMonthlyAverage`](FillWellDemandTSMonthlyAverage/FillWellDemandTSMonthlyAverage.md)            | FillWellDemandTSMonthlyAverage ||
|[`FillWellDemandTSMonthlyConstant`](FillWellDemandTSMonthlyConstant/FillWellDemandTSMonthlyConstant.md)         | FillWellDemandTSMonthlyConstant ||
|[`FillWellDemandTSMonthlyPattern`](FillWellDemandTSMonthlyPattern/FillWellDemandTSMonthlyPattern.md)            | FillWellDemandTSMonthlyPattern ||
|[`FillWellHistoricalPumpingTSMonthlyAverage`](FillWellHistoricalPumpingTSMonthlyAverage/FillWellHistoricalPumpingTSMonthlyAverage.md)    | FillWellHistoricalPumpingTSMonthlyAverage ||
|[`FillWellHistoricalPumpingTSMonthlyConstant`](FillWellHistoricalPumpingTSMonthlyConstant/FillWellHistoricalPumpingTSMonthlyConstant.md) | FillWellHistoricalPumpingTSMonthlyConstant ||
|[`FillWellHistoricalPumpingTSMonthlyPattern`](FillWellHistoricalPumpingTSMonthlyPattern/FillWellHistoricalPumpingTSMonthlyPattern.md)    | FillWellHistoricalPumpingTSMonthlyPattern ||
|[`FillWellRight`](FillWellRight/FillWellRight.md)                                                               | FillWellRight ||
|[`FillWellStation`](FillWellStation/FillWellStation.md)                                                         | FillWellStation ||
|[`FillWellStationsFromDiversionStations`](FillWellStationsFromDiversionStations/FillWellStationsFromDiversionStations.md)    | FillWellStationsFromDiversionStations ||
|[`FillWellStationsFromNetwork`](FillWellStationsFromNetwork/FillWellStationsFromNetwork.md)                     | FillWellStationsFromNetwork ||
|[`FormatDateTimeProperty`](FormatDateTimeProperty/FormatDateTimeProperty.md)                                    | Format a date/time processor property.|Migrated?||
|[`FormatStringProperty`](FormatStringProperty/FormatStringProperty.md)                                          | Format string processor property.|Migrated?||
|[`FormatTableDateTime`](FormatTableDateTime/FormatTableDateTime.md)                                             | Format a date/time in a table.   |Migrated?||
|[`FormatTableString`](FormatTableString/FormatTableString.md)                                                   | Format a string in a table.      |Migrated?||
|[`FreeTable`](FreeTable/FreeTable.md)                                                                           | Free memory resources for a table.|Migrated?||
|[`FTPGet`](FTPGet/FTPGet.md)                                                                                    | Download a file from an FTP site.|Migrated?||
|[`InsertTableColumn`](InsertTableColumn/InsertTableColumn.md)                                                   | Insert a column in a table.      |Migrated?||
|[`InsertTableRow`](InsertTableRow/InsertTableRow.md)                                                            | Insert a row in a table.         |Migrated?||
|[`JoinTables`](JoinTables/JoinTables.md)                                                                        | Join two tables.                 |Migrated?||
|[`LimitDiversionDemandTSMonthlyToRights`](LimitDiversionDemandTSMonthlyToRights/LimitDiversionDemandTSMonthlyToRights.md)    | LimitDiversionDemandTSMonthlyToRights ||
|[`LimitDiversionHistoricalTSMonthlyToRights`](LimitDiversionHistoricalTSMonthlyToRights/LimitDiversionHistoricalTSMonthlyToRights.md)    | LimitDiversionHistoricalTSMonthlyToRights ||
|[`LimitWellDemandTSMonthlyToRights`](LimitWellDemandTSMonthlyToRights/LimitWellDemandTSMonthlyToRights.md)      | LimitWellDemandTSMonthlyToRights ||
|[`LimitWellHistoricalPumpingTSMonthlyToRights`](LimitWellHistoricalPumpingTSMonthlyToRights/LimitWellHistoricalPumpingTSMonthlyToRights.md)    | LimitWellHistoricalPumpingTSMonthlyToRights ||
|[`ListFiles`](ListFiles/ListFiles.md)                                                                           | List files in a folder.          |Migrated?||
|[`ManipulateTableString`](ManipulateTableString/ManipulateTableString.md)                                       | Manipulate a string in a table.  |Migrated?||
|[`MergeListFileColumns`](MergeListFileColumns/MergeListFileColumns.md)                                          | MergeListFileColumns ||
|[`MergeWellRights`](MergeWellRights/MergeWellRights.md)                                                         | MergeWellRights ||
|[`Message`](Message/Message.md)                                                                                 | Output a message to the log file.|Migrated?||
|[`NewExcelWorkbook`](NewExcelWorkbook/NewExcelWorkbook.md)                                                      | Create a new Excel workbook file.|Migrated?||
|[`NewTable`](NewTable/NewTable.md)                                                                              | Create a new table.              |Migrated?||
|[`OpenHydroBase`](OpenHydroBase/OpenHydroBase.md)                                                               | OpenHydroBase ||
|[`PrintNetwork`](PrintNetwork/PrintNetwork.md)                                                                  | PrintNetwork ||
|[`ReadBlaneyCriddleFromHydroBase`](ReadBlaneyCriddleFromHydroBase/ReadBlaneyCriddleFromHydroBase.md)            | ReadBlaneyCriddleFromHydroBase ||
|[`ReadBlaneyCriddleFromStateCU`](ReadBlaneyCriddleFromStateCU/ReadBlaneyCriddleFromStateCU.md)                  | ReadBlaneyCriddleFromStateCU ||
|[`ReadClimateStationsFromList`](ReadClimateStationsFromList/ReadClimateStationsFromList.md)                     | ReadClimateStationsFromList ||
|[`ReadClimateStationsFromStateCU`](ReadClimateStationsFromStateCU/ReadClimateStationsFromStateCU.md)            | ReadClimateStationsFromStateCU ||
|[`ReadControlFromStateMod`](ReadControlFromStateMod/ReadControlFromStateMod.md)                                 | ReadControlFromStateMod ||
|[`ReadCropCharacteristicsFromHydroBase`](ReadCropCharacteristicsFromHydroBase/ReadCropCharacteristicsFromHydroBase.md)    | ReadCropCharacteristicsFromHydroBase ||
|[`ReadCropCharacteristicsFromStateCU`](ReadCropCharacteristicsFromStateCU/ReadCropCharacteristicsFromStateCU.md)| ReadCropCharacteristicsFromStateCU ||
|[`ReadCropPatternTSFromHydroBase`](ReadCropPatternTSFromHydroBase/ReadCropPatternTSFromHydroBase.md)            | ReadCropPatternTSFromHydroBase ||
|[`ReadCropPatternTSFromParcels`](ReadCropPatternTSFromParcels/ReadCropPatternTSFromParcels.md)                  | ReadCropPatternTSFromParcels ||
|[`ReadCropPatternTSFromStateCU`](ReadCropPatternTSFromStateCU/ReadCropPatternTSFromStateCU.md)                  | ReadCropPatternTSFromStateCU ||
|[`ReadCULocationsFromStateCU`](ReadCULocationsFromStateCU/ReadCULocationsFromStateCU.md)                        | ReadCULocationsFromStateCU ||
|[`ReadCULocationsFromStateMod`](ReadCULocationsFromStateMod/ReadCULocationsFromStateMod.md)                     | ReadCULocationsFromStateMod ||
|[`ReadDelayTablesDailyFromStateMod`](ReadDelayTablesDailyFromStateMod/ReadDelayTablesDailyFromStateMod.md)      | ReadDelayTablesDailyFromStateMod ||
|[`ReadDelayTablesMonthlyFromStateMod`](ReadDelayTablesMonthlyFromStateMod/ReadDelayTablesMonthlyFromStateMod.md)| ReadDelayTablesMonthlyFromStateMod ||
|[`ReadDiversionDemandTSMonthlyFromStateMod`](ReadDiversionDemandTSMonthlyFromStateMod/ReadDiversionDemandTSMonthlyFromStateMod.md)                   | ReadDiversionDemandTSMonthlyFromStateMod ||
|[`ReadDiversionHistoricalTSMonthlyFromHydroBase`](ReadDiversionHistoricalTSMonthlyFromHydroBase/ReadDiversionHistoricalTSMonthlyFromHydroBase.md)    | ReadDiversionHistoricalTSMonthlyFromHydroBase ||
|[`ReadDiversionHistoricalTSMonthlyFromStateMod`](ReadDiversionHistoricalTSMonthlyFromStateMod/ReadDiversionHistoricalTSMonthlyFromStateMod.md)       | ReadDiversionHistoricalTSMonthlyFromStateMod ||
|[`ReadDiversionRightsFromHydroBase`](ReadDiversionRightsFromHydroBase/ReadDiversionRightsFromHydroBase.md)      | ReadDiversionRightsFromHydroBase ||
|[`ReadDiversionRightsFromStateMod`](ReadDiversionRightsFromStateMod/ReadDiversionRightsFromStateMod.md)         | ReadDiversionRightsFromStateMod ||
|[`ReadDiversionStationsFromList`](ReadDiversionStationsFromList/ReadDiversionStationsFromList.md)               | ReadDiversionStationsFromList ||
|[`ReadDiversionStationsFromNetwork`](ReadDiversionStationsFromNetwork/ReadDiversionStationsFromNetwork.md)      | ReadDiversionStationsFromNetwork ||
|[`ReadDiversionStationsFromStateMod`](ReadDiversionStationsFromStateMod/ReadDiversionStationsFromStateMod.md)   | ReadDiversionStationsFromStateMod ||
|[`ReadExcelWorkbook`](ReadExcelWorkbook/ReadExcelWorkbook.md)                                                   | ReadExcelWorkbook ||
|[`ReadInstreamFlowDemandTSAverageMonthlyFromStateMod`](ReadInstreamFlowDemandTSAverageMonthlyFromStateMod/ReadInstreamFlowDemandTSAverageMonthlyFromStateMod.md)    | ReadInstreamFlowDemandTSAverageMonthlyFromStateMod ||
|[`ReadInstreamFlowRightsFromHydroBase`](ReadInstreamFlowRightsFromHydroBase/ReadInstreamFlowRightsFromHydroBase.md)        | ReadInstreamFlowRightsFromHydroBase ||
|[`ReadInstreamFlowRightsFromStateMod`](ReadInstreamFlowRightsFromStateMod/ReadInstreamFlowRightsFromStateMod.md)| ReadInstreamFlowRightsFromStateMod ||
|[`ReadInstreamFlowStationsFromList`](ReadInstreamFlowStationsFromList/ReadInstreamFlowStationsFromList.md)      | ReadInstreamFlowStationsFromList ||
|[`ReadInstreamFlowStationsFromNetwork`](ReadInstreamFlowStationsFromNetwork/ReadInstreamFlowStationsFromNetwork.md)        | ReadInstreamFlowStationsFromNetwork ||
|[`ReadInstreamFlowStationsFromStateMod`](ReadInstreamFlowStationsFromStateMod/ReadInstreamFlowStationsFromStateMod.md)     | ReadInstreamFlowStationsFromStateMod ||
|[`ReadIrrigationPracticeTSFromHydroBase`](ReadIrrigationPracticeTSFromHydroBase/ReadIrrigationPracticeTSFromHydroBase.md)  | ReadIrrigationPracticeTSFromHydroBase ||
|[`ReadIrrigationPracticeTSFromList`](ReadIrrigationPracticeTSFromList/ReadIrrigationPracticeTSFromList.md)      | ReadIrrigationPracticeTSFromList ||
|[`ReadIrrigationPracticeTSFromStateCU`](ReadIrrigationPracticeTSFromStateCU/ReadIrrigationPracticeTSFromStateCU.md)        | ReadIrrigationPracticeTSFromStateCU ||
|[`ReadIrrigationWaterRequirementTSMonthlyFromStateCU`](ReadIrrigationWaterRequirementTSMonthlyFromStateCU/ReadIrrigationWaterRequirementTSMonthlyFromStateCU.md)  | ReadIrrigationWaterRequirementTSMonthlyFromStateCU ||
|[`ReadNetworkFromStateMod`](ReadNetworkFromStateMod/ReadNetworkFromStateMod.md)                                 | ReadNetworkFromStateMod ||
|[`ReadOperationalRightsFromStateMod`](ReadOperationalRightsFromStateMod/ReadOperationalRightsFromStateMod.md)   | ReadOperationalRightsFromStateMod ||
|[`ReadPatternFile`](ReadPatternFile/ReadPatternFile.md)                                                         | ReadPatternFile ||
|[`ReadParcelsFromHydroBase`](ReadParcelsFromHydroBase/ReadParcelsFromHydroBase.md)                              | ReadParcelsFromHydroBase ||
|[`ReadPenmanMonteithFromHydroBase`](ReadPenmanMonteithFromHydroBase/ReadPenmanMonteithFromHydroBase.md)         | ReadPenmanMonteithFromHydroBase ||
|[`ReadPenmanMonteithFromStateCU`](ReadPenmanMonteithFromStateCU/ReadPenmanMonteithFromStateCU.md)               | ReadPenmanMonteithFromStateCU ||
|[`ReadPlanReturnFromStateMod`](ReadPlanReturnFromStateMod/ReadPlanReturnFromStateMod.md)                        | ReadPlanReturnFromStateMod ||
|[`ReadPlanStationsFromStateMod`](ReadPlanStationsFromStateMod/ReadPlanStationsFromStateMod.md)                  | ReadPlanStationsFromStateMod ||
|[`ReadPlanWellAugmentationFromStateMod`](ReadPlanWellAugmentationFromStateMod/ReadPlanWellAugmentationFromStateMod.md)    | ReadPlanWellAugmentationFromStateMod ||
|[`ReadPropertiesFromExcel`](ReadPropertiesFromExcel/ReadPropertiesFromExcel.md)                                 | ReadPropertiesFromExcel ||
|[`ReadPropertiesFromFile`](ReadPropertiesFromFile/ReadPropertiesFromFile.md)                                    | ReadPropertiesFromFile ||
|[`ReadReservoirReturnFromStateMod`](ReadReservoirReturnFromStateMod/ReadReservoirReturnFromStateMod.md)         | ReadReservoirReturnFromStateMod ||
|[`ReadReservoirRightsFromHydroBase`](ReadReservoirRightsFromHydroBase/ReadReservoirRightsFromHydroBase.md)      | ReadReservoirRightsFromHydroBase ||
|[`ReadReservoirRightsFromStateMod`](ReadReservoirRightsFromStateMod/ReadReservoirRightsFromStateMod.md)         | ReadReservoirRightsFromStateMod ||
|[`ReadReservoirStationsFromList`](ReadReservoirStationsFromList/ReadReservoirStationsFromList.md)               | ReadReservoirStationsFromList ||
|[`ReadReservoirStationsFromNetwork`](ReadReservoirStationsFromNetwork/ReadReservoirStationsFromNetwork.md)      | ReadReservoirStationsFromNetwork ||
|[`ReadReservoirStationsFromStateMod`](ReadReservoirStationsFromStateMod/ReadReservoirStationsFromStateMod.md)   | ReadReservoirStationsFromStateMod ||
|[`ReadResponseFromStateMod`](ReadResponseFromStateMod/ReadResponseFromStateMod.md)                              | ReadResponseFromStateMod ||
|[`ReadRiverNetworkFromStateMod`](ReadRiverNetworkFromStateMod/ReadRiverNetworkFromStateMod.md)                  | ReadRiverNetworkFromStateMod ||
|[`ReadStreamEstimateCoefficientsFromStateMod`](ReadStreamEstimateCoefficientsFromStateMod/ReadStreamEstimateCoefficientsFromStateMod.md)    | ReadStreamEstimateCoefficientsFromStateMod ||
|[`ReadStreamEstimateStationsFromList`](ReadStreamEstimateStationsFromList/ReadStreamEstimateStationsFromList.md)| ReadStreamEstimateStationsFromList ||
|[`ReadStreamEstimateStationsFromNetwork`](ReadStreamEstimateStationsFromNetwork/ReadStreamEstimateStationsFromNetwork.md)       | ReadStreamEstimateStationsFromNetwork ||
|[`ReadStreamEstimateStationsFromStateMod`](ReadStreamEstimateStationsFromStateMod/ReadStreamEstimateStationsFromStateMod.md)    | ReadStreamEstimateStationsFromStateMod ||
|[`ReadStreamGageStationsFromList`](ReadStreamGageStationsFromList/ReadStreamGageStationsFromList.md)            | ReadStreamGageStationsFromList ||
|[`ReadStreamGageStationsFromNetwork`](ReadStreamGageStationsFromNetwork/ReadStreamGageStationsFromNetwork.md)   | ReadStreamGageStationsFromNetwork ||
|[`ReadStreamGageStationsFromStateMod`](ReadStreamGageStationsFromStateMod/ReadStreamGageStationsFromStateMod.md)| ReadStreamGageStationsFromStateMod ||
|[`ReadTableCellsFromExcel`](ReadTableCellsFromExcel/ReadTableCellsFromExcel.md)                                 | Read table cells from Excel worksheet.|Migrated?||
|[`ReadTableFromDataStore`](ReadTableFromDataStore/ReadTableFromDataStore.md)                                    | Read a table from a datastore.   |Migrated?||
|[`ReadTableFromDBF`](ReadTableFromDBF/ReadTableFromDBF.md)                                                      | Read a table from a DBF file.    |Migrated?||
|[`ReadTableFromDelimitedFile`](ReadTableFromDelimitedFile/ReadTableFromDelimitedFile.md)                        | Read a table from a delimited file.|Migrated?||
|[`ReadTableFromExcel`](ReadTableFromExcel/ReadTableFromExcel.md)                                                | Read a table from an Excel workbook file.|Migrated?||
|[`ReadTableFromFixedFormatFile`](ReadTableFromFixedFormatFile/ReadTableFromFixedFormatFile.md)                  | Read a table from a fixed-format file.|Migrated?||
|[`ReadWellDemandTSMonthlyFromStateMod`](ReadWellDemandTSMonthlyFromStateMod/ReadWellDemandTSMonthlyFromStateMod.md)                                  | ReadWellDemandTSMonthlyFromStateMod ||
|[`ReadWellHistoricalPumpingTSMonthlyFromStateCU`](ReadWellHistoricalPumpingTSMonthlyFromStateCU/ReadWellHistoricalPumpingTSMonthlyFromStateCU.md)    | ReadWellHistoricalPumpingTSMonthlyFromStateCU ||
|[`ReadWellHistoricalPumpingTSMonthlyFromStateMod`](ReadWellHistoricalPumpingTSMonthlyFromStateMod/ReadWellHistoricalPumpingTSMonthlyFromStateMod.md) | ReadWellHistoricalPumpingTSMonthlyFromStateMod ||
|[`ReadWellRightsFromHydroBase`](ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md)                     | ReadWellRightsFromHydroBase ||
|[`ReadWellRightsFromStateMod`](ReadWellRightsFromStateMod/ReadWellRightsFromStateMod.md)                        | ReadWellRightsFromStateMod ||
|[`ReadWellStationsFromNetwork`](ReadWellStationsFromNetwork/ReadWellStationsFromNetwork.md)                     | ReadWellStationsFromNetwork ||
|[`ReadWellStationsFromStateMod`](ReadWellStationsFromStateMod/ReadWellStationsFromStateMod.md)                  | ReadWellStationsFromStateMod ||
|[`RemoveCropPatternTS`](RemoveCropPatternTS/RemoveCropPatternTS.md)                                             | RemoveCropPatternTS ||
|[`RemoveFile`](RemoveFile/RemoveFile.md)                                                                        | Remove a file.                   |Migrated?||
|[`RunCommands`](RunCommands/RunCommands.md)                                                                     | Run a TSTool command file.       |Migrated?||
|[`RunProgram`](RunProgram/RunProgram.md)                                                                        | Run a program.                   |Migrated?||
|[`RunPython`](RunPython/RunPython.md)                                                                           | Run a python program.            |Migrated?||
|[`RunR`](RunR/RunR.md)                                                                                          | Run an R script.                 |Migrated?||
|[`SetBlaneyCriddle`](SetBlaneyCriddle/SetBlaneyCriddle.md)                                                      | SetBlaneyCriddle ||
|[`SetClimateStation`](SetClimateStation/SetClimateStation.md)                                                   | SetClimateStation ||
|[`SetCropCharacteristics`](SetCropCharacteristics/SetCropCharacteristics.md)                                    | SetCropCharacteristics ||
|[`SetCropPatternTS`](SetCropPatternTS/SetCropPatternTS.md)                                                      | SetCropPatternTS ||
|[`SetCropPatternTSFromList`](SetCropPatternTSFromList/SetCropPatternTSFromList.md)                              | SetCropPatternTSFromList ||
|[`SetCULocation`](SetCULocation/SetCULocation.md)                                                               | SetCULocation ||
|[`SetCULocationClimateStationWeights`](SetCULocationClimateStationWeights/SetCULocationClimateStationWeights.md)| SetCULocationClimateStationWeights ||
|[`SetCULocationClimateStationWeightsFromHydroBase`](SetCULocationClimateStationWeightsFromHydroBase/SetCULocationClimateStationWeightsFromHydroBase.md)  | SetCULocationClimateStationWeightsFromHydroBase ||
|[`SetCULocationClimateStationWeightsFromList`](SetCULocationClimateStationWeightsFromList/SetCULocationClimateStationWeightsFromList.md)                 | SetCULocationClimateStationWeightsFromList ||
|[`SetCULocationsFromList`](SetCULocationsFromList/SetCULocationsFromList.md)                                    | SetCULocationsFromList ||
|[`SetDebugLevel`](SetDebugLevel/SetDebugLevel.md)                                                               | Set the debug level for logging. |Migrated?||
|[`SetDiversionAggregate`](SetDiversionAggregate/SetDiversionAggregate.md)                                       | SetDiversionAggregate ||
|[`SetDiversionAggregateFromList`](SetDiversionAggregateFromList/SetDiversionAggregateFromList.md)               | SetDiversionAggregateFromList ||
|[`SetDiversionDemandTSMonthly`](SetDiversionDemandTSMonthly/SetDiversionDemandTSMonthly.md)                     | SetDiversionDemandTSMonthly ||
|[`SetDiversionDemandTSMonthlyConstant`](SetDiversionDemandTSMonthlyConstant/SetDiversionDemandTSMonthlyConstant.md)    | SetDiversionDemandTSMonthlyConstant ||
|[`SetDiversionHistoricalTSMonthly`](SetDiversionHistoricalTSMonthly/SetDiversionHistoricalTSMonthly.md)         | SetDiversionHistoricalTSMonthly ||
|[`SetDiversionHistoricalTSMonthlyConstant`](SetDiversionHistoricalTSMonthlyConstant/SetDiversionHistoricalTSMonthlyConstant.md)    | SetDiversionHistoricalTSMonthlyConstant ||
|[`SetDiversionMultiStruct`](SetDiversionMultiStruct/SetDiversionMultiStruct.md)                                 | SetDiversionMultiStruct ||
|[`SetDiversionMultiStructFromList`](SetDiversionMultiStructFromList/SetDiversionMultiStructFromList.md)         | SetDiversionMultiStructFromList ||
|[`SetDiversionRight`](SetDiversionRight/SetDiversionRight.md)                                                   | SetDiversionRight ||
|[`SetDiversionStation`](SetDiversionStation/SetDiversionStation.md)                                             | SetDiversionStation ||
|[`SetDiversionStationCapacitiesFromTS`](SetDiversionStationCapacitiesFromTS/SetDiversionStationCapacitiesFromTS.md)                      | SetDiversionStationCapacitiesFromTS ||
|[`SetDiversionStationDelayTablesFromNetwork`](SetDiversionStationDelayTablesFromNetwork/SetDiversionStationDelayTablesFromNetwork.md)    | SetDiversionStationDelayTablesFromNetwork ||
|[`SetDiversionStationDelayTablesFromRTN`](SetDiversionStationDelayTablesFromRTN/SetDiversionStationDelayTablesFromRTN.md)                | SetDiversionStationDelayTablesFromRTN ||
|[`SetDiversionStationsFromList`](SetDiversionStationsFromList/SetDiversionStationsFromList.md)                  | SetDiversionStationsFromList ||
|[`SetDiversionSystem`](SetDiversionSystem/SetDiversionSystem.md)                                                | SetDiversionSystem ||
|[`SetDiversionSystemFromList`](SetDiversionSystemFromList/SetDiversionSystemFromList.md)                        | SetDiversionSystemFromList ||
|[`SetExcelCell`](SetExcelCell/SetExcelCell.md)                                                                  | Set data in an Excel cell.       |Migrated?||
|[`SetExcelWorksheetViewProperties`](SetExcelWorksheetViewProperties/SetExcelWorksheetViewProperties.md)         | Set Excel worksheet view properties.|Migrated?||
|[`SetInstreamFlowDemandTSAverageMonthlyConstant`](SetInstreamFlowDemandTSAverageMonthlyConstant/SetInstreamFlowDemandTSAverageMonthlyConstant.md)        | SetInstreamFlowDemandTSAverageMonthlyConstant ||
|[`SetInstreamFlowDemandTSAverageMonthlyFromRights`](SetInstreamFlowDemandTSAverageMonthlyFromRights/SetInstreamFlowDemandTSAverageMonthlyFromRights.md)  | SetInstreamFlowDemandTSAverageMonthlyFromRights ||
|[`SetInstreamFlowRight`](SetInstreamFlowRight/SetInstreamFlowRight.md)                                          | SetInstreamFlowRight ||
|[`SetInstreamFlowStation`](SetInstreamFlowStation/SetInstreamFlowStation.md)                                    | SetInstreamFlowStation ||
|[`SetIrrigationPracticeTS`](SetIrrigationPracticeTS/SetIrrigationPracticeTS.md)                                 | SetIrrigationPracticeTS ||
|[`SetIrrigationPracticeTSFromHydroBase`](SetIrrigationPracticeTSFromHydroBase/SetIrrigationPracticeTSFromHydroBase.md)    | SetIrrigationPracticeTSFromHydroBase ||
|[`SetIrrigationPracticeTSFromList`](SetIrrigationPracticeTSFromList/SetIrrigationPracticeTSFromList.md)         | SetIrrigationPracticeTSFromList ||
|[`SetIrrigationPracticeTSFromStateCU`](SetIrrigationPracticeTSFromStateCU/SetIrrigationPracticeTSFromStateCU.md)| SetIrrigationPracticeTSFromStateCU ||
|[`SetIrrigationPracticeTSMaxPumpingToRights`](SetIrrigationPracticeTSMaxPumpingToRights/SetIrrigationPracticeTSMaxPumpingToRights.md)                      | SetIrrigationPracticeTSMaxPumpingToRights ||
|[`SetIrrigationPracticeTSPumpingMaxUsingWellRights`](SetIrrigationPracticeTSPumpingMaxUsingWellRights/SetIrrigationPracticeTSPumpingMaxUsingWellRights.md) | SetIrrigationPracticeTSPumpingMaxUsingWellRights ||
|[`SetIrrigationPracticeTSSprinklerAcreageFromList`](SetIrrigationPracticeTSSprinklerAcreageFromList/SetIrrigationPracticeTSSprinklerAcreageFromList.md)    | SetIrrigationPracticeTSSprinklerAcreageFromList ||
|[`SetIrrigationPracticeTSSprinklerAreaFromList`](SetIrrigationPracticeTSSprinklerAreaFromList/SetIrrigationPracticeTSSprinklerAreaFromList.md)             | SetIrrigationPracticeTSSprinklerAreaFromList ||
|[`SetIrrigationPracticeTSTotalAcreageToCropPatternTSTotalAcreage`](SetIrrigationPracticeTSTotalAcreageToCropPatternTSTotalAcreage/SetIrrigationPracticeTSTotalAcreageToCropPatternTSTotalAcreage.md)    | SetIrrigationPracticeTSTotalAcreageToCropPatternTSTotalAcreage ||
|[`SetOperationalRight`](SetOperationalRight/SetOperationalRight.md)                                             | SetOperationalRight ||
|[`SetOutputPeriod`](SetOutputPeriod/SetOutputPeriod.md)                                                         | Set the global processor output period.|Migrated?||
|[`SetOutputYearType`](SetOutputYearType/SetOutputYearType.md)                                                   | Set the global processor output year type. |Migrated?||
|[`SetPenmanMonteith`](SetPenmanMonteith/SetPenmanMonteith.md)                                                   | SetPenmanMonteith ||
|[`SetPlanStation`](SetPlanStation/SetPlanStation.md)                                                            | SetPlanStation ||
|[`SetProperty`](SetProperty/SetProperty.md)                                                                     | Set processor property value.    |Migrated?||
|[`SetPropertyFromTable`](SetPropertyFromTable/SetPropertyFromTable.md)                                          | Set processor property from a table.|Migrated?||
|[`SetReservoirAggregate`](SetReservoirAggregate/SetReservoirAggregate.md)                                       | SetReservoirAggregate ||
|[`SetReservoirAggregateFromList`](SetReservoirAggregateFromList/SetReservoirAggregateFromList.md)               | SetReservoirAggregateFromList ||
|[`SetReservoirRight`](SetReservoirRight/SetReservoirRight.md)                                                   | SetReservoirRight ||
|[`SetReservoirStation`](SetReservoirStation/SetReservoirStation.md)                                             | SetReservoirStation ||
|[`SetRiverNetworkNode`](SetRiverNetworkNode/SetRiverNetworkNode.md)                                             | SetRiverNetworkNode ||
|[`SetStreamEstimateCoefficients`](SetStreamEstimateCoefficients/SetStreamEstimateCoefficients.md)               | SetStreamEstimateCoefficients ||
|[`SetStreamEstimateCoefficientsPFGage`](SetStreamEstimateCoefficientsPFGage/SetStreamEstimateCoefficientsPFGage.md)    | SetStreamEstimateCoefficientsPFGage ||
|[`SetStreamEstimateStation`](SetStreamEstimateStation/SetStreamEstimateStation.md)                              | SetStreamEstimateStation ||
|[`SetStreamGageStation`](SetStreamGageStation/SetStreamGageStation.md)                                          | SetStreamGageStation ||
|[`SetTableValues`](SetTableValues/SetTableValues.md)                                                            | Set values in a table.           |Migrated?||
|[`SetWarningLevel`](SetWarningLevel/SetWarningLevel.md)                                                         | Set the warning level for logging.|Migrated?||
|[`SetWellAggregate`](SetWellAggregate/SetWellAggregate.md)                                                      | SetWellAggregate ||
|[`SetWellAggregateFromList`](SetWellAggregateFromList/SetWellAggregateFromList.md)                              | SetWellAggregateFromList ||
|[`SetWellDemandTSMonthly`](SetWellDemandTSMonthly/SetWellDemandTSMonthly.md)                                    | SetWellDemandTSMonthly ||
|[`SetWellDemandTSMonthlyConstant`](SetWellDemandTSMonthlyConstant/SetWellDemandTSMonthlyConstant.md)            | SetWellDemandTSMonthlyConstant ||
|[`SetWellHistoricalPumpingTSMonthly`](SetWellHistoricalPumpingTSMonthly/SetWellHistoricalPumpingTSMonthly.md)   | SetWellHistoricalPumpingTSMonthly ||
|[`SetWellHistoricalPumpingTSMonthlyConstant`](SetWellHistoricalPumpingTSMonthlyConstant/SetWellHistoricalPumpingTSMonthlyConstant.md)    | SetWellHistoricalPumpingTSMonthlyConstant ||
|[`SetWellRight`](SetWellRight/SetWellRight.md)                                                                  | SetWellRight ||
|[`SetWellStation`](SetWellStation/SetWellStation.md)                                                            | SetWellStation ||
|[`SetWellStationAreaToCropPatternTS`](SetWellStationAreaToCropPatternTS/SetWellStationAreaToCropPatternTS.md)   | SetWellStationAreaToCropPatternTS ||
|[`SetWellStationCapacitiesFromTS`](SetWellStationCapacitiesFromTS/SetWellStationCapacitiesFromTS.md)            | SetWellStationCapacitiesFromTS ||
|[`SetWellStationCapacityToWellRights`](SetWellStationCapacityToWellRights/SetWellStationCapacityToWellRights.md)| SetWellStationCapacityToWellRights ||
|[`SetWellStationDelayTablesFromNetwork`](SetWellStationDelayTablesFromNetwork/SetWellStationDelayTablesFromNetwork.md)    | SetWellStationDelayTablesFromNetwork ||
|[`SetWellStationDelayTablesFromRTN`](SetWellStationDelayTablesFromRTN/SetWellStationDelayTablesFromRTN.md)      | SetWellStationDelayTablesFromRTN ||
|[`SetWellStationDepletionTablesFromRTN`](SetWellStationDepletionTablesFromRTN/SetWellStationDepletionTablesFromRTN.md)    | SetWellStationDepletionTablesFromRTN ||
|[`SetWellStationsFromList`](SetWellStationsFromList/SetWellStationsFromList.md)                                 | SetWellStationsFromList ||
|[`SetWellSystem`](SetWellSystem/SetWellSystem.md)                                                               | SetWellSystem ||
|[`SetWellSystemFromList`](SetWellSystemFromList/SetWellSystemFromList.md)                                       | SetWellSystemFromList ||
|[`SetWorkingDir`](SetWorkingDir/SetWorkingDir.md)                                                               | Set the working directory (folder) for following commands.|Migrated?||
|[`SortBlaneyCriddle`](SortBlaneyCriddle/SortBlaneyCriddle.md)                                                   | SortBlaneyCriddle ||
|[`SortClimateStations`](SortClimateStations/SortClimateStations.md)                                             | SortClimateStations ||
|[`SortCropCharacteristics`](SortCropCharacteristics/SortCropCharacteristics.md)                                 | SortCropCharacteristics ||
|[`SortCropPatternTS`](SortCropPatternTS/SortCropPatternTS.md)                                                   | SortCropPatternTS ||
|[`SortCULocations`](SortCULocations/SortCULocations.md)                                                         | SortCULocations ||
|[`SortDiversionDemandTSMonthly`](SortDiversionDemandTSMonthly/SortDiversionDemandTSMonthly.md)                  | SortDiversionDemandTSMonthly ||
|[`SortDiversionHistoricalTSMonthly`](SortDiversionHistoricalTSMonthly/SortDiversionHistoricalTSMonthly.md)      | SortDiversionHistoricalTSMonthly ||
|[`SortDiversionRights`](SortDiversionRights/SortDiversionRights.md)                                             | SortDiversionRights ||
|[`SortDiversionStations`](SortDiversionStations/SortDiversionStations.md)                                       | SortDiversionStations ||
|[`SortInstreamFlowRights`](SortInstreamFlowRights/SortInstreamFlowRights.md)                                    | SortInstreamFlowRights ||
|[`SortInstreamFlowStations`](SortInstreamFlowStations/SortInstreamFlowStations.md)                              | SortInstreamFlowStations ||
|[`SortIrrigationPracticeTS`](SortIrrigationPracticeTS/SortIrrigationPracticeTS.md)                              | SortIrrigationPracticeTS ||
|[`SortPenmanMonteith`](SortPenmanMonteith/SortPenmanMonteith.md)                                                | SortPenmanMonteith ||
|[`SortReservoirRights`](SortReservoirRights/SortReservoirRights.md)                                             | SortReservoirRights ||
|[`SortReservoirStations`](SortReservoirStations/SortReservoirStations.md)                                       | SortReservoirStations ||
|[`SortStreamEstimateStations`](SortStreamEstimateStations/SortStreamEstimateStations.md)                        | SortStreamEstimateStations ||
|[`SortStreamGageStations`](SortStreamGageStations/SortStreamGageStations.md)                                    | SortStreamGageStations ||
|[`SortTable`](SortTable/SortTable.md)                                                                           | Sort table contents.             |Migrated?||
|[`SortWellDemandTSMonthly`](SortWellDemandTSMonthly/SortWellDemandTSMonthly.md)                                 | SortWellDemandTSMonthly ||
|[`SortWellHistoricalPumpingTSMonthly`](SortWellHistoricalPumpingTSMonthly/SortWellHistoricalPumpingTSMonthly.md)| SortWellHistoricalPumpingTSMonthly ||
|[`SortWellRights`](SortWellRights/SortWellRights.md)                                                            | SortWellRights ||
|[`SortWellStations`](SortWellStations/SortWellStations.md)                                                      | SortWellStations ||
|[`SplitStateModReport`](SplitStateModReport/SplitStateModReport.md)                                             | Split a StateMod report file into separate files.|Migrated||
|[`SplitTableColumn`](SplitTableColumn/SplitTableColumn.md)                                                      | Split a table column into multiple columns.|Migrated?||
|[`SplitTableRow`](SplitTableRow/SplitTableRow.md)                                                               | Split a table row into multiple rows. |Migrated?||
|[`StartLog`](StartLog/StartLog.md)                                                                              | (Re)start the log file.          |Migrated?||
|[`StartRegressionTestResultsReport`](StartRegressionTestResultsReport/StartRegressionTestResultsReport.md)      | Start the regression test results report file to record output of tests.|Migrated? ||
|[`TableMath`](TableMath/TableMath.md)                                                                           | Perform simple math on table columns.|Migrated?||
|[`TranslateBlaneyCriddle`](TranslateBlaneyCriddle/TranslateBlaneyCriddle.md)                                    | TranslateBlaneyCriddle ||
|[`TranslateCropCharacteristics`](TranslateCropCharacteristics/TranslateCropCharacteristics.md)                  | TranslateCropCharacteristics ||
|[`TranslateCropPatternTS`](TranslateCropPatternTS/TranslateCropPatternTS.md)                                    | TranslateCropPatternTS ||
|[`TranslatePenmanMonteith`](TranslatePenmanMonteith/TranslatePenmanMonteith.md)                                 | TranslatePenmanMonteith ||
|[`UnknownCommand`](UnknownCommand/UnknownCommand.md)                                                            | Unknown command.                 |Migrated?||
|[`UnzipFile`](UnzipFile/UnzipFile.md)                                                                           | Unzip the contents of a zip file.|Migrated?||
|[`WebGet`](WebGet/WebGet.md)                                                                                    | Download a file from a URL.      |Migrated?||
|[`WriteBlaneyCriddleToList`](WriteBlaneyCriddleToList/WriteBlaneyCriddleToList.md)                              | WriteBlaneyCriddleToList ||
|[`WriteBlaneyCriddleToStateCU`](WriteBlaneyCriddleToStateCU/WriteBlaneyCriddleToStateCU.md)                     | WriteBlaneyCriddleToStateCU ||
|[`WriteCheckFile`](WriteCheckFile/WriteCheckFile.md)                                                            | Write command log to file.       |Migrated?||
|[`WriteClimateStationsToList`](WriteClimateStationsToList/WriteClimateStationsToList.md)                        | WriteClimateStationsToList ||
|[`WriteClimateStationsToStateCU`](WriteClimateStationsToStateCU/WriteClimateStationsToStateCU.md)               | WriteClimateStationsToStateCU ||
|[`WriteControlToStateMod`](WriteControlToStateMod/WriteControlToStateMod.md)                                    | WriteControlToStateMod ||
|[`WriteCropCharacteristicsToList`](WriteCropCharacteristicsToList/WriteCropCharacteristicsToList.md)            | WriteCropCharacteristicsToList ||
|[`WriteCropCharacteristicsToStateCU`](WriteCropCharacteristicsToStateCU/WriteCropCharacteristicsToStateCU.md)   | WriteCropCharacteristicsToStateCU ||
|[`WriteCropPatternTSToDateValue`](WriteCropPatternTSToDateValue/WriteCropPatternTSToDateValue.md)               | WriteCropPatternTSToDateValue ||
|[`WriteCropPatternTSToStateCU`](WriteCropPatternTSToStateCU/WriteCropPatternTSToStateCU.md)                     | WriteCropPatternTSToStateCU ||
|[`WriteCULocationsToStateCU`](WriteCULocationsToStateCU/WriteCULocationsToStateCU.md)                           | WriteCULocationsToStateCU ||
|[`WriteDelayTablesDailyToList`](WriteDelayTablesDailyToList/WriteDelayTablesDailyToList.md)                     | WriteDelayTablesDailyToList ||
|[`WriteDelayTablesDailyToStateMod`](WriteDelayTablesDailyToStateMod/WriteDelayTablesDailyToStateMod.md)         | WriteDelayTablesDailyToStateMod ||
|[`WriteDelayTablesMonthlyToList`](WriteDelayTablesMonthlyToList/WriteDelayTablesMonthlyToList.md)               | WriteDelayTablesMonthlyToList ||
|[`WriteDelayTablesMonthlyToStateMod`](WriteDelayTablesMonthlyToStateMod/WriteDelayTablesMonthlyToStateMod.md)   | WriteDelayTablesMonthlyToStateMod ||
|[`WriteDelayTablesToStateCU`](WriteDelayTablesToStateCU/WriteDelayTablesToStateCU.md)                           | WriteDelayTablesToStateCU ||
|[`WriteDiversionDemandTSMonthlyToStateMod`](WriteDiversionDemandTSMonthlyToStateMod/WriteDiversionDemandTSMonthlyToStateMod.md)                | WriteDiversionDemandTSMonthlyToStateMod ||
|[`WriteDiversionHistoricalTSMonthlyToStateMod`](WriteDiversionHistoricalTSMonthlyToStateMod/WriteDiversionHistoricalTSMonthlyToStateMod.md)    | WriteDiversionHistoricalTSMonthlyToStateMod ||
|[`WriteDiversionRightsToList`](WriteDiversionRightsToList/WriteDiversionRightsToList.md)                        | WriteDiversionRightsToList ||
|[`WriteDiversionRightsToStateMod`](WriteDiversionRightsToStateMod/WriteDiversionRightsToStateMod.md)            | WriteDiversionRightsToStateMod ||
|[`WriteDiversionStationsToList`](WriteDiversionStationsToList/WriteDiversionStationsToList.md)                  | WriteDiversionStationsToList ||
|[`WriteDiversionStationsToStateMod`](WriteDiversionStationsToStateMod/WriteDiversionStationsToStateMod.md)      | WriteDiversionStationsToStateMod ||
|[`WriteInstreamFlowDemandTSAverageMonthlyToStateMod`](WriteInstreamFlowDemandTSAverageMonthlyToStateMod/WriteInstreamFlowDemandTSAverageMonthlyToStateMod.md)    | WriteInstreamFlowDemandTSAverageMonthlyToStateMod ||
|[`WriteInstreamFlowRightsToList`](WriteInstreamFlowRightsToList/WriteInstreamFlowRightsToList.md)               | WriteInstreamFlowRightsToList ||
|[`WriteInstreamFlowRightsToStateMod`](WriteInstreamFlowRightsToStateMod/WriteInstreamFlowRightsToStateMod.md)   | WriteInstreamFlowRightsToStateMod ||
|[`WriteInstreamFlowStationsToList`](WriteInstreamFlowStationsToList/WriteInstreamFlowStationsToList.md)         | WriteInstreamFlowStationsToList ||
|[`WriteInstreamFlowStationsToStateMod`](WriteInstreamFlowStationsToStateMod/WriteInstreamFlowStationsToStateMod.md)       | WriteInstreamFlowStationsToStateMod ||
|[`WriteIrrigationPracticeTSToDateValue`](WriteIrrigationPracticeTSToDateValue/WriteIrrigationPracticeTSToDateValue.md)    | WriteIrrigationPracticeTSToDateValue ||
|[`WriteIrrigationPracticeTSToStateCU`](WriteIrrigationPracticeTSToStateCU/WriteIrrigationPracticeTSToStateCU.md)| WriteIrrigationPracticeTSToStateCU ||
|[`WriteNetworkToStateMod`](WriteNetworkToStateMod/WriteNetworkToStateMod.md)                                    | WriteNetworkToStateMod ||
|[`WriteOperationalRightsToStateMod`](WriteOperationalRightsToStateMod/WriteOperationalRightsToStateMod.md)      | WriteOperationalRightsToStateMod ||
|[`WriteParcelsToFile`](WriteParcelsToFile/WriteParcelsToFile.md)                                                | WriteParcelsToFile ||
|[`WritePenmanMonteithToList`](WritePenmanMonteithToList/WritePenmanMonteithToList.md)                           | WritePenmanMonteithToList ||
|[`WritePenmanMonteithToStateCU`](WritePenmanMonteithToStateCU/WritePenmanMonteithToStateCU.md)                  | WritePenmanMonteithToStateCU ||
|[`WritePlanReturnToStateMod`](WritePlanReturnToStateMod/WritePlanReturnToStateMod.md)                           | WritePlanReturnToStateMod ||
|[`WritePlanStationsToStateMod`](WritePlanStationsToStateMod/WritePlanStationsToStateMod.md)                     | WritePlanStationsToStateMod ||
|[`WritePlanWellAugmentationToStateMod`](WritePlanWellAugmentationToStateMod/WritePlanWellAugmentationToStateMod.md)    | WritePlanWellAugmentationToStateMod ||
|[`WritePropertiesToFile`](WritePropertiesToFile/WritePropertiesToFile.md)                                       | Write processor properties to a file.|Migrated?||
|[`WriteReservoirReturnToStateMod`](WriteReservoirReturnToStateMod/WriteReservoirReturnToStateMod.md)            | WriteReservoirReturnToStateMod ||
|[`WriteReservoirRightsToList`](WriteReservoirRightsToList/WriteReservoirRightsToList.md)                        | WriteReservoirRightsToList ||
|[`WriteReservoirRightsToStateMod`](WriteReservoirRightsToStateMod/WriteReservoirRightsToStateMod.md)            | WriteReservoirRightsToStateMod ||
|[`WriteReservoirStationsToList`](WriteReservoirStationsToList/WriteReservoirStationsToList.md)                  | WriteReservoirStationsToList ||
|[`WriteReservoirStationsToStateMod`](WriteReservoirStationsToStateMod/WriteReservoirStationsToStateMod.md)      | WriteReservoirStationsToStateMod ||
|[`WriteResponseToStateMod`](WriteResponseToStateMod/WriteResponseToStateMod.md)                                 | WriteResponseToStateMod ||
|[`WriteRiverNetworkToList`](WriteRiverNetworkToList/WriteRiverNetworkToList.md)                                 | WriteRiverNetworkToList ||
|[`WriteRiverNetworkToStateMod`](WriteRiverNetworkToStateMod/WriteRiverNetworkToStateMod.md)                     | WriteRiverNetworkToStateMod ||
|[`WriteStreamEstimateCoefficientsToList`](WriteStreamEstimateCoefficientsToList/WriteStreamEstimateCoefficientsToList.md)              | WriteStreamEstimateCoefficientsToList ||
|[`WriteStreamEstimateCoefficientsToStateMod`](WriteStreamEstimateCoefficientsToStateMod/WriteStreamEstimateCoefficientsToStateMod.md)  | WriteStreamEstimateCoefficientsToStateMod ||
|[`WriteStreamEstimateStationsToList`](WriteStreamEstimateStationsToList/WriteStreamEstimateStationsToList.md)   | WriteStreamEstimateStationsToList ||
|[`WriteStreamEstimateStationsToStateMod`](WriteStreamEstimateStationsToStateMod/WriteStreamEstimateStationsToStateMod.md)    | WriteStreamEstimateStationsToStateMod ||
|[`WriteStreamGageStationsToList`](WriteStreamGageStationsToList/WriteStreamGageStationsToList.md)               | WriteStreamGageStationsToList ||
|[`WriteStreamGageStationsToStateMod`](WriteStreamGageStationsToStateMod/WriteStreamGageStationsToStateMod.md)   | WriteStreamGageStationsToStateMod ||
|[`WriteTableCellsToExcel`](WriteTableCellsToExcel/WriteTableCellsToExcel.md)                                    | Write table row cells to an Excel worksheet.|Migrated?||
|[`WriteTableToDelimitedFile`](WriteTableToDelimitedFile/WriteTableToDelimitedFile.md)                           | Write a table to delimited file. |Migrated?||
|[`WriteTableToExcel`](WriteTableToExcel/WriteTableToExcel.md)                                                   | Write a table to an Excel workbook file.|Migrated?||
|[`WriteTableToGeoJSON`](WriteTableToGeoJSON/WriteTableToGeoJSON.md)                                             | Write a table to a GeoJSON file.|Migrated?||
|[`WriteTableToHTML`](WriteTableToHTML/WriteTableToHTML.md)                                                      | Write a table to an HTML file.   |Migrated?||
|[`WriteTableToShapefile`](WriteTableToShapefile/WriteTableToShapefile.md)                                       | Write a table to a shapefile.|Migrated?||
|[`WriteTableToShapefile`](WriteTableToShapefile/WriteTableToShapefile.md)                                       | WriteTableToShapefile ||
|[`WriteWellDemandTSMonthlyToStateMod`](WriteWellDemandTSMonthlyToStateMod/WriteWellDemandTSMonthlyToStateMod.md)| WriteWellDemandTSMonthlyToStateMod ||
|[`WriteWellHistoricalPumpingTSMonthlyToStateMod`](WriteWellHistoricalPumpingTSMonthlyToStateMod/WriteWellHistoricalPumpingTSMonthlyToStateMod.md)    | WriteWellHistoricalPumpingTSMonthlyToStateMod ||
|[`WriteWellRightsToList`](WriteWellRightsToList/WriteWellRightsToList.md)                                       | WriteWellRightsToList ||
|[`WriteWellRightsToStateMod`](WriteWellRightsToStateMod/WriteWellRightsToStateMod.md)                           | WriteWellRightsToStateMod ||
|[`WriteWellStationsToStateMod`](WriteWellStationsToStateMod/WriteWellStationsToStateMod.md)                     | WriteWellStationsToStateMod ||
