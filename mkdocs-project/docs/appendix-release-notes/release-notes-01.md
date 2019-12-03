# StateDMI / Release Notes / Version 1 #

## Changes in Version 1.22.00

* Change `readWellRightsFromHydroBase()` IDFormat parameter dialog note and fix to make sure that identifiers are still being formatted properly for the previous release.

## Changes in Version 1.21.00

* Adjust reading well rights to reread from the database rather than relying on the “wells” table.  This results in slower run times and potentially more water rights in output files.  The South Platte and Rio Grande modeling approaches are different and use different command parameters when reading well rights.
* Add APEX amounts to the net amount decrees.  This results in larger decrees in model files.

## Changes in Version 1.20.05

* Fixed problem where some sort commands were not available from menus.
* In `synchronizeIrrigationPracticeAndCropPatternTS()`, remove code that resets groundwater acreage to sprinkler acreage if groundwater is less – it is unneeded based on modeling conventions.

## Changes in Version 1.20.04

* When writing list files, add the files to the list of output files available in the GUI.

## Changes in Version 1.20.03

* Add `read*FromList()` commands to all menus that through oversight did not have them added previously.
* Fix problem with “see check file” dialog being shown before editing commands.

## Changes in Version 1.20.02

* Continue to improve well processing.
* Always create the check file for well stations and rights.
* Add the `translateBlaneyCriddle()` and `translateCropCharacteristics()` commands to change crop name to facilitate modeling.

## Changes in Version 1.20.01

* Continue to improve well processing.

## Changes in Version 1.20.00

* Improve well processing based on user feedback.

## Changes in Version 1.18.10

* Update the `readWellDemandTSMonthlyFromStateMod()` command to allow ignoring wells or D&Ws, to facilitate processing subsets of the data set.

## Changes in Version 1.18.09

* Implemented several fixes in the network editor.

## Changes in Version 1.18.08

* To allow filling station names from the network file, add the following commands:  `fillDiversionStationsFromNetwork()`, `fillInstreamFlowStationsFromNetwork(), `fillReservoirStationsFromNetwork()`, `fillWellStationsFromNetwork()`.
* Add elevation to the `readCULocationsFromList()` command.

## Changes in Version 1.18.07

* Add AWC to the `readCULocationsFromList()` command.
* Fix the `fillCropPatternTSProrateAgStats()` command so that all county crops are used even if a location does not have a  crop type.

## Changes in Version 1.18.06

* Add the `readDiversionDemandTSMonthlyFromStateMod()` command.
* Improve packaging of image files with Jar files to resolve issues with icons not displaying in the network editor.

## Changes in Version 1.18.05

* Add the `setDiversionStationsFromList()` and `setWellStationsFromList()` commands.
* Update `fillCULocation()` and `setCULocation()` to include elevation and AWC.
* Update the StateCU CDS and IPY file headers to include more complete headers, as expected by StateMod.
* Add the `mergeListFileColumns()` command.

## Changes in Version 1.18.04

* Implement minor changes to well processing based on user feedback.
* When processing well demand time series to calculate average efficiencies or to estimate demands using average efficiencies, only process well stations where idvcomw=1.

## Changes in Version 1.18.03

* Implement changes to better support product-oriented file management.

## Changes in Version 1.18.02

* For well stations, default the associated well to NA rather than N/A.

## Changes in Version 1.18.01

* Change command dialogs to use scrollable text areas instead of text fields of a fixed size.  This allows longer commands to be fully viewed.
* Double-clicking on a command now displays the editor for the command.

## Changes in Version 1.18.00

* Add commands for well pumping time series (historical monthly).
* Reverse the Run All Commands and Run Selected Commands buttons to agree with the TSTool order.
* Add graphical buttons at the top of the main window to facilitate opening and saving commands files.
* Add a complete menu for well historical time series monthly (previously only a subset of commands was included).

## Changes in Version 1.17.21

* Update to include `write*ToList()` output files in the results file list.
* Add the efficiency report that is created when processing demands to the output results file list.

## Changes in Version 1.17.20

* For well-only aggregates, do not put a W in the water right ID.  D&W nodes still have the W, as per the Watright software.
* Fix a bug where the last year filling crop pattern time series was not getting normalized to basin statistics.
* Fix a bug in the `etCropPatternTS()` command overriding an existing pattern causes erroneous output.
* When using a time series that is read from an external file, reset the period to the output period so that the time series can be filled.
* Fix a bug where when filling time series with a constant, the start and end dates were not being handled properly.
* When filling diversion time series with diversion comments, read the comments after setting the period of record.
* Add the `setDiversionDemandTSMonthlyConstant()` command.

## Changes in Version 1.17.19

* Fix bug where missing file with the `readAgStatsTSFromDateValue()` command was not being handled gracefully.
* Add IgnoreUseType parameter to the `readDiversionRightsFromHydroBase()` command, to address double counting of some rights in HydroBase.
* Change so that if an aggregate/system diversion part has missing capacity, the total capacity is not incremented for the part (which has a large default value).
* Fix so that an aggregate/system historical diversion is handled properly, even if the first part has no data in the database.

## Changes in Version 1.17.18

* Fix a bug in the `writeCropPatternTSToStateCU()` command where the WriteCropArea parameter was not defaulting properly.
* Implement new parameters in the `synchronizeIrrigationPracticeAndCropPatternTS()` command to allow more options in synchronizing acreage.
* Update the `setIrrigationPracticeTSMaxPumpingToRights()` command to have the `NumberOfDaysInMonth` parameter, to be consistent with StateCU conventions.
* Update the `fillCropPatternTSProrateAgStats()` command to include the NormalizeTotals parameter, to allow acreage to be prorated to the totals for a group of crop types.

## Changes in Version 1.17.17

* Update the `readCropPatternTSFromHydroBase()` command to truncate parcel acreage to .2 to compare to work done by Leonard Rice.  This feature is available only in test mode.
* Update the `setIrrigationPracticeTSFromList()` command so that data other than efficiencies can be set.

## Changes in Version 1.17.16

* Fix bug where the `setCropPatternTS()` command results were not getting refreshed after the initial processing, resulting in zeros in the output for totals.
* Add a tool to print surface-only diversions to the log file.  This is useful for finding diversion stations that are not D&W model nodes.

## Changes in Version 1.17.15

* Add `DefineRightHow=LatestDate` when processing well rights.

## Changes in Version 1.17.14

* Change `writeCropPatternTSToStateCU()` command to optionally write only the total acreage by location, to facilitate comparison with previous data sets, and to use the output period, if specified.
* Add the file version to the `readCropPatternTSFromStateCU()` and `readIrrigationPracticeTSFromStateCU()` commands, to facilitate comparison with previous data sets.
* Add the `openHydroBase()` command.
* Add the `ReadStart` and `ReadEnd` parameters to the `readDiversionHistoricalTS*FromHydroBase()` commands.
* Fix bug where reading historical diversion time series was initializing the first part in an aggregate and then adding the part again.
* Enable flags for filling diversions with historical average, pattern, constant, and limiting to rights.

## Changes in Version 1.17.13

* Change the log file warning level to 3 to reflect application warnings being level 1, command warnings being level 2, and important low-level warnings being level 3.
* Finalize results displays for reservoirs, wells, instream flow and network data.
* Begin phasing in stored procedures to production version.
* Add `write*ToList()` commands.
* Add the `readReservoirRightsFromStateMod()`, `readWellRightsFromStateMod()` commands.
* Add the `readStreamEstimateCoefficientsFromStateMod()` command.
* Add the `readDelayTablesFromStateCU()` and `readCULocationDelayTableAssignmentsFromStateCU()` commands.
* Add `sortBlaneyCriddle()` command and add precision to `writeBlaneyCriddleToStateCU()` to facilitate comparison with previous data sets.
* Add version to `writeCULocationsToStateCU()` to facilitate comparison with previous data sets.
* Convert commands to messaging that is integrated with the log file viewer.
* Update the `setIrrigationPracticeTSSPrinklerAreaFromList()` command to allow using the area in the list file, to facilitate comparison with previous data sets.
* Fix bug where `sortReservoirStations()` was not being recognized.
* Add ability to open new model networks.
* Add the startLog() command.
* Fix a bug where the dialog for the commands file was not being initialized to a recently accessed directory.

## Changes in Version 1.17.12

* Add warnings for obsolete commands.
* Change message levels to minimize console output.

## Changes in Version 1.17.11

* The StateCU IPY file can now be processed.  See specific changes below.
* Irrigation practice time series groundwater and sprinkler acreage can now be read from HydroBase using the `setIrrigationPracticeTSFromHydroBase()` command.
* The `setIrrigationPracticeTSMaxPumpingToRights()` command will now use water rights from the `setIrrigationPracticeTSFromHydroBase()` command, or read a StateMod well rights file.
* The `setIrrigationPracticeTSSprinklerAreaFromList()` command has been enabled to process snapshots of sprinkler parcels from a list file and HydroBase.
* A new log file viewer has been enabled.  The old Notepad default viewer is still available but the new viewer provides a summary of level 1 and 2 warning messages and allows navigation in the large log file.  Additional enhancements will be enabled in future releases in order to simplify the interpretation of messages.  In particular, additional attention is focusing on the classification of warnings and errors.
* The results of a commands run were previously tied to whether StateCU or StateMod menus were activated.  Output components for both models are now listed to simplify access to results.  The prototype displays are being finalized.

## Changes in Version 1.17.10

* Add `the synchronizeIrrigationPracticeAndCropPatternTS()` command for processing the irrigation practice time series.
* Add `writeCropPatternTSToStateCU()` to the irrigation practice time series commands to update the file after synchronization.
* The irrigation practice commands to assign the maximum pumping, groundwater acreage, and sprinkler acreage are not yet functional.
* Add the sortCULocations()` command to sort the data before writing.
* Add the `sortDiversionRights()`, `sortReservoirRights()`, `sortInstreamFlowRights()`, and `sortWellRights()` commands to sort right data before writing.
* Update the `readWellRightsFromHydroBase()` command to have the `DefineRightHow` and `DefaultAppropriationDate` parameters to control how StateMod rights are created from well rights and permits.
* Update the `readDiversionRightsFromHydroBase()`, `readReservoirRightsFromHydroBase()`, `readInstreamFlowRightsFromHydroBase()`, and `readWellRightsFromHydroBase()` commands to include the OnOffDefault parameter to allow the right switch to be set to the appropriation date year.
* Update the above commands that aggregate rights to set aggregate rights to the integer value for the decree-weighted appropriation date.  Previously the fractional remainder was not cleared and the resulting administration numbers could give erroneous appropriation dates (e.g., when used with the `limitDiversionHistoricalTSMonthlyToRights()` or similar commands).
* Update the `limitDiversionHistoricalTSMonthlyToRights()` and `limitDiversionDemandTSMonthlyToRights()` commands to have the `UseOnOffDate` parameter, allowing the appropriation date to be determined from the administration number or the OnOff switch (when a year).
* When processing diversion and well rights, ignore water rights that have units other than C or CFS.  Previously only C was checked but there is apparently a change in HydroBase.
* Implement initial enhancements to the log file viewer, which provides a summary of warning messages and provides navigation tools for the log file.

## Changes in Version 1.17.09

* When reading stream gage stations from the network, make the default output order the network order, which is expected by StateMod.  Previously, stream gages were listed first and then other baseflow nodes.
* Rearrange the order of the diversion demand time series (monthly) menus to reflect typical use.

## Changes in Version 1.17.08

* Handle the water rights switch in the StateMod diversion rights file when using the `limitDiversionHistoricalTSMonthlyToRights()` and `limitDiversionDemandTSMonthlyToRights()` commands.

## Changes in Version 1.17.07

* Add `limitDiversionDemandTSMonthlyToRights()`.

## Changes in Version 1.17.06

* The first time series part in an aggregate/system was not being filled in the `readDiversionHistoricalTSMonthlyFromHydroBase()` command.  This has been fixed.
* The efficiency report from the `calculateDiversionStationEfficiencies()` command is now listed in the output files and can be displayed.
* The list of stations to ignore in the `limitDiversionHistoricalTSMonthlyToRights()` command was not being processed correctly, resulting in an error.  This has been fixed.

## Changes in Version 1.17.05

* The `limitDiversionHistoricalTSMonthlyToRights()` command was not triggering a save of the original time series, as needed.  This has been fixed.  The documentation for the command was also significantly expanded.
* In `calculateDiversionDemandTSMonthly()`, change so that if the efficiency and IWR is zero, set the demand to zero.  Previously it was set to missing.  This will also impact well demands.
* Add the `IncludeCollections` parameter to the ``fillDiversionHistoricalTSMonthlyAverage()` and `fillDiversionHistoricalTSMonthlyPattern()` commands to allow diversion aggregate and system stations to be ignored in processing (because they can also be filled during the read).
* Enhance `readDiversionHistoricalTSMonthlyFromHydroBase()` to allow filling of aggregate/system parts before aggregation.
* The fill period from command parameters was not being considered when filling time series with a pattern – this has been fixed.
* The `setDiversionHistoricalTSConstant()` and other similar commands were not using the SetStart when specified by the user.
* The `fillDiversionStation()`, `setDiversionStation()`, `fillWellStation()`, and `setWellStation()` commands were not properly transferring efficiencies specified in calendar year to water year data in station files.

## Changes in Version 1.17.04

* Previously, if the dead storage value for a reservoir was specified, the reservoir accounts were adjusted down by this amount and the dead storage was always written as zero.  This was a workaround for a limitation in StateMod.  The dead storage value is now written as specified and accounts are not adjusted.
* Setting or filling rights by specifying a StationID of “ID” was not previously working.  The software will now set the station ID to the first part of the right (the part before “.”).
* Added a warning when processing diversion demand time series (monthly) if no diversion stations have been read.

## Changes in Version 1.17.03

* Fix bug in `setInstreamFlowDemandTSAverageMonthlyFromRights()` where the period for the time series was incorrectly being taken from the `setOutputPeriod()` command.  It now uses the `setOutputYearType()` command information.
* Fix bug where the `calculateStreamEstimateCoefficients()` command was generating an error about the command not being recognized.  This was a spurious message that was removed.
* Change so that reading stations from the network results in the river node identifier being set to the station identifier.  Previously the river node identifier was set to missing and required an additional fill or set command to assign the value.

## Changes in Version 1.17.02

* Fix bug filling `fillDiversionHistoricalTSMonthlyAverage()` where missing original data was causing the command to end.  Time series with no original data are now not filled with historical averages and the processing is allowed to continue through other time series.
* Begin simplifying `readSprinklerParcelsFromList()` – additional enhancements need to be completed before the command can be used in production.

## Changes in Version 1.17.01

* The `readDiversionHistoricalTSMonthlyFromHydroBase()` command was not allocating memory for blank time series – therefore subsequent filling was ignored and output was missing.
 
## Changes in Version 1.17.00

* Introduce tabular displays for output components, available at the bottom of the main interface.  These displays can be used to review data while find-tuning commands.  Additional enhancements to these displays will occur – this is an initial release of these features.
* Rework the size of the display panels in the main interface to provide more display area for commands.  The other panel areas are still retained but may be removed or hidden in the future.
* Add `sortDiversionHistoricalTSMonthly()` command to facilitate maintaining consistency with the diversion station file.
* Update the `setHistoricalDiversionHistoricalTSMonthly()` command to allow reading from HydroBase, for cases where a diversion’s time series may actually be stored under a different identifier (e.g., a stream gage).  Also save a backup copy of the time series after reading, for use with the `limitDiversionHistoricalTSMonthlyToRights()` command.
* Fix the `limitDiversionHistoricalTSMonthlyToRights()` command – previously the list of rights was accumulating as diversion stations were processed, instead of just using the rights for the specific diversion station.
* Fix an error in the `setReservoirStation()` command editor dialog – the account name was being discarded when re-editing an old command.
* Fix inconsistencies in the Select All and Deselect All commands menus – previously the behavior was not correct.

## Changes in Version 1.16.03

* The default for commands that write files is now to overwrite files.  The previous default of updating the file was resulting in long file headers.
* Setting the output year type with `setOutputYearType()` was not being recognized.  This impacted both output of time series and processing of data like diversion station efficiencies.
* Add `setDiversionHistoricalTSMonthlyConstant()` – this eliminates the need for replacement files in some cases.

## Changes in Version 1.16.02

* The `setDiversionStationDelayTablesFromRTN()` command editor dialog was changing the spelling of the command after edits – this has been corrected.
* For station collections (aggregates and systems), the station name in the list file was not being used to set data for the stations – this has been corrected.
* When reading an old Makenet network file into StateDMI, the label positions were being reversed – this has been fixed.  It may be necessary to reconvert networks to retain the original label positions.

## Changes in Version 1.16.01

* Diversion, reservoir, well, and instream flow station identifiers that looked like WDIDs but which were not (e.g., `990001`) were resulting in HydroBase queries, which caused an error.  Additional error handling has been enabled.
* The `setDiversionStationDelayTablesFromRTN()` command editor dialog was changing the spelling of the command after edits – this has been corrected.

## Changes in Version 1.16.00

* Added to troubleshooting to explain errors caused by `Ctrl-M` characters in commands.
* Added a popup menu choice for commands to find a command using a line number – this facilitates debugging the commands.
* Updated the command editor dialog and documentation for the `setReservoirStation()` command to clarify the meaning of `AccountID`.  The `AccountName` parameter was also mistakenly being set to the AccountID.
* Fix limitation where the position of the legend in the network was not being saved after the legend was interactively moved.
* Fix bug where after adding a new node in the network, the node cannot be selected for further changes.
* Display the page margins on the network diagram by default.
* Clarify the documentation for system and aggregate commands to indicate that the commands should be specified before reading data from HydroBase.

## Changes in Version 1.15.02

* Completed documentation for all data files.
* Updated documentation to discuss conventions for station identifiers.
* Updated documentation to incorporate general information from old StateMod Appendix B procedures manual.
* Updated documentation to include well demand commands.
* Updated network data documentation to describe use of the network up front versus list files.
* Fixed several well demand command editor dialogs were not displaying correctly.
* Fixed problem where fill commands for time series were not updating the time series to the files.
* Enable viewing results in text editor. 

## Changes in Version 1.15.01

* Includes all well file commands.

## Changes in Version 1.15.00

* All StateMod files are supported except for wells.  Well features are preliminary.
* Change StateCU IPY file format to match previous version.  The precision for some data that are in more than one file (e.g., area) is once again inconsistent.

**Previous release notes were not tracked in documentation**
