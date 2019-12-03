# StateDMI / Release Notes / Version 2 #

## Changes in Version 2.18.00

* Additional changes in IPY processing to correct for some NaN and -999 values that were being generated.  Additional care has been taken to set values to zero in some cases, resulting in more complete computation of other acreage terms.

## Changes in Version 2.17.00

* There is a major change in this release in how the crop pattern time series acreages are written to the CDS file.  Previously, the acreage was written as a total and a fraction by crop.  When the file was read (e.g., when processing the irrigation practice [IPY] file), this resulted in only three significant digits of precision and the resulting acreage by crop would not match that of the raw values in HydroBase, the GIS layers, the total in the CDS file, or the total computed in the IPY file (based on supply source).  The legacy approach was maintained for a long time to allow comparison of model results but it became increasingly difficult to perform quality control on data as it moved through the system.  The new approach writes the actual acreage for each crop.  The fraction is still displayed but is for information only and is not used in computations.  StateCU version 12.19 or later can be used to read the acreage column (prior versions used the total and fraction).  It is important that the CDS and IPY files are generated with the same version of StateDMI (2.17.00 or later for both, or versions earlier than 2.17.00 for both).
* The IPY acreage values are now written by default to a precision of .1 and can be controlled with the `PrecisionForArea` parameter.  This is necessary to minimize errors in round-off and warnings about acreage totals, in particular because acreage are categorized by supply type (surface and ground water) and irrigation method (flood and sprinkler) and fractions when rounded to integers were difficult to automatically prorate, especially with the processing described in version 2.16.00 notes below.
* The `setIrrigationPracticeFromList()` command can be used instead of the `readIrrigationPracticeFromList()` command.  This sets the IPY values at the time the command is executed, instead of providing parcels that are later read when processing HydroBase parcels.  For example, using the read command on an aggregate provides aggregate part data to be considered when reading data from HydroBase (which may supply data for other parts of the aggregate).  Using the set command will set the values as the command is processed.

## Changes in Version 2.16.00

* The incremental releases leading up to and culminating with this release have implemented major changes in the processing of the irrigation practice (IPY) file.  In particular, dependencies between commands that process IPY acreage have been removed.  For each command, the acreage numbers are computed using the currently available information, with general order and importance of data being total acreage, then groundwater acreage (when groundwater data are available), then surface water acreage.   This recognizes that the total acreage from the CDS file should control and that groundwater acreage estimates (e.g., from center pivot irrigation and field data) are the most reliable. Each command initiates a cascade of computations in order to compute IPY acreages as completely as possible.  For example, setting groundwater acreage does not try to adjust the total but will try to compute the remaining surface water acres (total – groundwater), and then if possible the acreage by irrigation method (flood or sprinkler).  Consequently, as commands are executed to process the data, values will be converted from missing (-999) to specified or computed values.  In troubleshooting data processing, commands can be incrementally uncommented to evaluate the results of each step.  Log messages may indicate that some computation could not be done (e.g., groundwater total acres are set but split between flood and sprinkler cannot be done).
* The `writeIrrigationPracticeToStateCU()` command has been updated to include a `OneLocationPerFile` parameter.  This is useful during troubleshooting because by default the IPY file is printed in blocks of years.  By printing one location per file, the full period for a structure can be reviewed.  This option is particularly useful if write commands are used after each major step of processing, in order to see the impacts of a command on results.

## Changes in Version 2.14.00

* Review all current procedures for the well rights, crop pattern time series, and irrigation practice time series, update all command reference documentation, and make minor software changes based on review.
* Fix bug in `readWellRightsFromHydroBase()` command – the `DefineRightHow` parameter was always being set to `EarliestDate`.  The impacts of this bug should be minor, based on a previous review of different parameter combinations.
* Change so that when specifying aggregate/systems using a list file, if the list file specifies a location that is not found in the data set, the user will be warned.
* Add ability to read the associated diversion ID when reading a well station list file – this allows well right aggregation to properly handle different location types.
* The `fillWellStationsFromHydroBase()` command is being phased out.  Instead, use `fillWellStationsFromDiversionStations()`, `setWellStationAreaFromCropPatternTS()`, and `setWellStationCapacityFromWellRights()` commands.
* Update the Command menu to have three levels, to improve usability and allow further consolidation of StateCU and StateMod commands.

## Changes in Version 2.02.00 – 2.13.00

* These versions were made with features to explore implementing a new modeling approach and were finalized in version 2.14 – see the notes for that version.

## Changes in Version 2.01.00

* Add `setRiverNetworkNode()` command to set river node network information, mainly to change the node name.
* Update the CCH, CDS, and KBC files to default to new 30-character crop names.  The previous file versions can still be read using a Version=10 parameter.
* Update the IPY file format to by default use the new format with more columns for acreage.  The processing logic to fill the values is not yet in place.  Therefore, the Version=10 parameter should be used when writing the IPY file, until the next release.
* Add preliminary features to fill diversion records with “currently in use” (CIU) information when using the `readDiversionHistoricalTSMonthlyFromHydroBase()` command – features will be finalized after further testing.
* Implement improvements in the installer to better handle configuration of the HydroBase settings.

## Changes in Version 2.00.00

* First version using the new installer, to facilitate distribution and installation of the software.
* Remove need for well water rights to be sorted in a particular order to be processed for the StateCU IPY file.  The max pumping values in the IPY file will generally have a higher maximum.
