# StateDMI / Release Notes / Version 6 #

*   [Changes in Version 6.0.0](#changes-in-version-60000)

----------

## Changes in Version 6.0.0 ##

**Major release to use OpenJDK Java 11, improve reading diversion time series.**

*   ![change](change.png) [6.0.0] Update to use OpenJDK Java 11, which is free and open source.
*   ![change](change.png) [6.0.0] Update the
    [`CreateRegressionTest`](../command-ref/CreateRegressionTestCommandFile/CreateRegressionTestCommandFile.md) command:
    +   The command now matches TSTool 15.2.0.
    +   The `SetupCommandFile` and `EndCommandFile` parameters have been added to insert starting and ending commands.
*   ![change](change.png) [6.0.0] Update the
    [`ReadDiversionHistoricalTSMonthlyFromHydroBase`](../command-ref/ReadDiversionHistoricalTSMonthlyFromHydroBase/ReadDiversionHistoricalTSMonthlyFromHydroBase.md) command:
    +   Prior to HydroBase version 20251130,
        monthly diversions did not indicate missing values and were stored as zero.
        HydroBase version 20251130 now stores null values that can be interpreted as missing.
    +   Irrigation years that have at least one monthly diversion value are automatically filled
        using the carry forward methodology.
        Missing months within an irrigation year and prior to a known value will be filled with zero.
        Missing months within an irrigation year and after a known value will be filled with the last known value.
    +   The results now match the behavior of web services.
    +   Add the `FillCarryForward` parameter to control whether the carry forward methodology is applied.
    +   See the command documentation for more information.
*   ![change](change.png) [6.0.0] Update the
    [`StartRegressionTestResultsReport`](../command-ref/StartRegressionTestResultsReport/StartRegressionTestResultsReport.md) command:
    +   The command now matches TSTool 15.2.0.
    +   The `TestResultsTableID` parameter has been added to create a table of the test results.
    +   Output now includes a `nonum.txt` file without test number, which simplifies comparison of test reports.
