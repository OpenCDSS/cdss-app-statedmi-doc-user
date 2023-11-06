# StateDMI / Datastore Reference / Colorado HydroBase #

*   [Overview](#overview)
*   [Datastore Configuration File](#datastore-configuration-file)
*   [Troubleshooting](#troubleshooting)

------------

## Overview ##

This appendix describes the HydroBase datastore.
A datastore configuration file for datastore name `HydroBase` is distributed
with StateDMI software but is not configured by default because installed HydroBase database versions
that are installed will vary by computer.
As of StateDMI version 5.00.06, the [***Select HydroBase***](../../getting-started/getting-started.md#select-hydrobase-dialog) dialog
automatically defaults defining `HydroBase` and `HydroBaseYYYYMMDD` datastores for the
selected HydroBase, which minimizes the need to edit datastore configuration files.

See also the
[TSTool HydroBase Datastore](https://opencdss.state.co.us/tstool/latest/doc-user/datastore-ref/CO-HydroBase/CO-HydroBase/)
documentation, which provides more detailed information.

## Datastore Configuration File ##

A datastore is configured by creating a datastore configuration file for each connection.
Configurations are processed at software startup to enable datastores.

### HydroBase Datastore Using CDSS Account ###

The following illustrates the HydroBase datastore configuration file format
for the CDSS account.
The configuration file is typically named as follows:

*   `C:\CDSS\StateDMI-Version\datastores\HydroBase.cfg` - installation HydroBase datastore configuration
*   `C:\Users\user\.statedmi\NN\datastores\HydroBase.cfg` - user's HydroBase datastore configuration

The default `cdss` service account is used for authentication and allows read-only access to the database.

```text
# Configuration information for HydroBase database datastore, CDSS account.
#
# The user will see the following when interacting with the datastore:
#
# Name - datastore identifier used in applications, for example as the
#     input type information for time series identifiers (usually a short string)
# Description - datastore description for reports and user interfaces (short phrase)
#
# The following are needed to make database connections in the software
#
# Type - must be HydroBaseDataStore
# DatabaseEngine - the database software (SqlServer is current standard)
# DatabaseServer - IP or string address for database server, with instance name
#                  (e.g., "localhost\CDSS" can be used for local computer).  Omitting
#                  the instance name will result in default port numbers being tried
#                  until one works.
# DatabaseName - database name used by the server (e.g., HydroBase_CO_20120722)
# SystemLogin - service account login (omit for default)
# SystemPassword - service account password (omit for default)
# Enabled - if True then datastore will be enabled when software starts, False to disable
Type = "HydroBaseDataStore"
Name = "HydroBase"
Description = "HydroBase Datastore"
DatabaseEngine = "SqlServer"
# Local SQL Server Express installation...
DatabaseServer = "localhost\CDSS"
# Or a specific server...
#DatabaseServer = "amazon\CDSS"
DatabaseName = "HydroBase_CO_20200720"
```
**<p style="text-align: center;">
HydroBase Datastore Configuration File for Default CDSS Account (no ODBC DSN)
</p>**
