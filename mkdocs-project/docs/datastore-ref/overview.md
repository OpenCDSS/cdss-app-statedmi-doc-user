# StateDMI / Datastore Reference / Overview #

*   [Introduction](#introduction)
*   [Datastore List](#datastore-list)
*   [Datastore Configuration](#datastore-configuration)

-----

## Introduction ##

This reference section of the documentation provides information about datastores:

*   databases - must be accessible via
    [ODBC](https://en.wikipedia.org/wiki/Open_Database_Connectivity)/[JDBC](https://en.wikipedia.org/wiki/Java_Database_Connectivity) connection,
    typically through database driver software distributed with StateDMI
    (support for additional database software can be added)
*   file databases - typically optimized for a use, such as SQLite databases
*   files - simple files, including model files such as the State of Colorado's StateMod model
*   web services - such as HydroBase REST web services

A "datastore" is a data management component that contains time series and other data.
StateDMI by default creates a dedicated connection to HydroBase database.
However, the newer "datastore" design has been implemented to provide more flexibility in configuring data access.
Database connections and web services are treated as "datastores",
with databases also having an underlying database connection.

Tables can generically be read from datastores using the
[`ReadTableFromDataStore`](../command-ref/ReadTableFromDataStore/ReadTableFromDataStore.md) command.
Reading data from tables is helpful when troublehshooting HydroBase data processing issues.

Due to the specific integration of HydroBase and StateDMI,
each `Read` command must be updated specifically to integrate with HydroBase web services.
These enhancements will occur over time as resources allow.

## Datastore List ##

The following datastores (and input types) are listed in alphabetical order by datastore name.
See also the [TSTool Datastore](https://opencdss.state.co.us/tstool/latest/doc-user/datastore-ref/overview/)
list for examples of additional datastores that could be enabled in StateDMI if useful.

| **Datastore (link to documentation)**                                        | **Technology**         | **Spatial Extent** | **Contents**                                   |
|--|--|--|--|
| [ColoradoHydroBaseRest](ColoradoHydroBaseRest/ColoradoHydroBaseRest.md)      | Web service (REST)     | Colorado           | Historical and real-time data                  |
| [GenericDatabase](GenericDatabase/GenericDatabase.md)                        | Database (any ODBC)    | No limit           | Any SQL database                               |
| [HydroBase](CO-HydroBase/CO-HydroBase.md)                                    | Database (SQL Server)  | Colorado           | Colorado water resources (datastore version)   |

## Datastore Configuration ##

Datastores are configured using datastore configuration files, which are described in the specific appendix.

Built-in (installation) datastore configuration files are located in the software installation `system/datastores` folder.
User datastore configuration files are located in the `.statedmi/NN/datastores` folder.
The user configuration files override the installation configuration files.
For example, the State of Colorado HydroBase datastore configuration file
`C:\Users\user\.statedmi\5\datastores\HydroBase.cfg`
defining a datastore named `HydroBase` will override a similarly-named datastore in
configuration file `C:\CDSS\StateDMI-5.00.05\datastores\HydroBase.cfg`.
Note that the `Name` property in the datastore configuration file defines the datastore name, not the file name.
User datastore configuration files allow providing a more specific configuration for:

*   database version for [HydroBase datastore](CO-HydroBase/CO-HydroBase.md) database installed on user's computer
*   API key for [ColoradoHydroBaseRest](ColoradoHydroBaseRest/ColoradoHydroBaseRest.md) web services for
    the specific user
*   user-specific datastore files used by software developers

Use the ***View / Datastores*** menu in StateDMI to view datastores that are enabled, in particular to review
configuration errors and to see which configuration file was used for a datastore.

If necessary, edit configuration files with a text editor.
