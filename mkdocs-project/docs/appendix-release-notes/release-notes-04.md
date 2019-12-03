# StateDMI / Release Notes / Version 4 #

* [Changes in Versions 4.00.00 - 4.05.00](#changes-in-versions-40000-40500)
* [Release notes for all versions](release-notes.md)

----------

## Changes in Versions 4.00.00 – 4.05.00 ##

* ![change](change.png) [4.00.00] Update to use Java 7 for the runtime environment.  Performance is faster and support for newer operating systems is improved.
* ![change](change.png) [4.05.00] Update documentation to use new PDF conversion.  Table of contents is provided via PDF bookmarks.
* ![change](change.png) [4.00.00] Distribution size has been decreased by removing unused libraries.
* ![change](change.png) [4.00.00] The [`ReadCULocationsFromList`](../command-ref/ReadCULocationsFromList/ReadCULocationsFromList.md), [`ReadWellStationsFromList`](../command-ref/ReadWellStationsFromList/ReadWellStationsFromList.md) and other commands that read from a list file have been updated to have a `Top` parameter, which facilitates reading a limited dataset during testing.
* ![change](change.png) [4.04.00] The [`ReadWellRightsFromHydroBase`](../command-ref/ReadWellRightsFromHydroBase/ReadWellRightsFromHydroBase.md) command has been updated to include `Approach=Simple` parameter to use a simpler approach to processing well rights, where full well supply is associated with well stations, rather than splitting by acreage.  The command editor has been updated to a tabbed panel with more information and indicates which parameters are used with new Simple approach and Legacy approach.
* ![change](change.png) [4.00.00] The following commands have been updated to allow specifying well aggregate/system parts as WDIDs or well permit receipt, which is a more robust way to specify water supply (rather than parcel identifiers):  [`SetWellAggregate`](../command-ref/SetWellAggregate/SetWellAggregate.md), [`SetWellAggregateFromList`](../command-ref/SetWellAggregateFromList/SetWellAggregateFromList.md), [`SetWellSystem`](../command-ref/SetWellSystem/SetWellSystem.md), [`SetWellSystemFromList`](../command-ref/SetWellSystemFromList/SetWellSystemFromList.md), [`WriteCULocationsToList`](../command-ref/WriteCULocationsToList/WriteCULocationsToList.md), [`WriteWellStationsToList`](../command-ref/WriteWellStationsToList/WriteWellStationsToList.md).  The updated functionality uses a “part ID type” rather than relying on `p:` prefix on the ID.
