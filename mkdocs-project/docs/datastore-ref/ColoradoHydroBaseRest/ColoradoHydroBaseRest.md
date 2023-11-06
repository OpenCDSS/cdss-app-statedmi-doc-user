# StateDMI / Datastore Reference / ColoradoHydroBaseRest #

*   [Overview](#overview)
*   [Datastore Configuration File](#datastore-configuration-file)
*   [Commands with Datastore Integration](#commands-with-datastore-integration)

--------------------

## Overview ##

The State of Colorado’s HydroBase database is the primary database for water data in Colorado.
However, using the HydroBase datastore (see the [HydroBase Datastore appendix](../CO-HydroBase/CO-HydroBase.md))
requires a direct connection to the database,
and a local installation of the database may not be available.
The ColoradoHydroBaseRest datastore provides internet REST web service access to historical and real-time data and is described on the following page:

*   [Colorado Division of Water Resources REST Web Services Help](https://dwr.state.co.us/rest/get/help)

The ColoradoHydroBaseRest datastore uses new DWR HydroBase web services.

See also the
[TSTool ColoradoHydroBaseRest Datastore](https://opencdss.state.co.us/tstool/latest/doc-user/datastore-ref/ColoradoHydroBaseRest/ColoradoHydroBaseRest/)
documentation, which provides more detailed information.

## Datastore Configuration File ##

A default datastore configuration file is distributed with StateDMI software and
allows web service queries to be made using the default key.

To assign a user-specific key,
create a user datastore configuration `.statedmi/NN/datastores/HydroBaseWeb.cfg`,
for example by copying and modifying the installation datastore configuation file
`C:\CDSS\StateDMI-Version\datastores\HydroBaseWeb.cfg`.
Typically, the `ApiKey` can be specified to increase the amount of data that can be queried.
The API Key can be requested from Colorado DWR web services page to increase web service query limits.

Configurations are processed at software startup.

The following illustrates the ColoradoHydroBaseRest datastore configuration file format
and configures a datastore named `HydroBaseWeb`.

```
# Configuration information for "ColoradoHydroBaseRest" web service datastore.
# The user will see the following when interacting with the datastore:
#
# Enabled - True to enable and False to disable the datastore
# Type - must be ColoradoHydroBaseRestDataStore
# Name - datastore identifier used in applications, for example as the
#     input type information for time series identifiers (usually a short string)
# Description - datastore description for reports and user interfaces (short phrase)
# ServiceRootURI - web service root URI, including the server name and root path
# ApiKey - used to control access limits
# ServiceApiDocumentationUri - used to provide access to web service documentation

Enabled = True
Type = "ColoradoHydroBaseRestDataStore"
Name = "HydroBaseWeb"
Description = "Colorado HydroBase REST Web Service"
ServiceRootURI = "https://dwr.state.co.us/Rest/GET/api/v2"
ApiKey = "thekey..."
ServiceApiDocumentationUri = "https://dwr.state.co.us/Rest/GET/help"
```

**<p style="text-align: center;">
ColoradoHydroBaseRest Datastore Configuration File
</p>**

## Commands with Datastore Integration ##

The following StateDMI commands have been integrated with web services.
Additional integration will occur as resources allow.
Typically, a command works similarly whether a direct HydroBase database connection
or web services datastore is used.
Previous `Read` commands have been updated to have a `DataStore` parameter,
which defaults to local database `HydroBase` but can be set to `HydroBaseWeb` to use web services.
Consequently, unlike TSTool, there are not separate commands to read from HydroBase and HydroBase web services.

| **Command**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** |
| -- | -- |
| [`ReadDiversionRightsFromHydroBase`](../../command-ref/ReadDiversionRightsFromHydroBase/ReadDiversionRightsFromHydroBase.md) | Read diversion station rights. |
| [`ReadInstreamFlowRightsFromHydroBase`](../../command-ref/ReadInstreamFlowRightsFromHydroBase/ReadInstreamFlowRightsFromHydroBase.md) | Read instream flow station rights. |
| [`ReadIrrigationPracticeTSFromHydroBase`](../../command-ref/ReadIrrigationPracticeTSFromHydroBase/ReadIrrigationPracticeTSFromHydroBase.md) | Read irrigation practice time series (**preliminary - commands to process this data type are being updated to process parcels first**). |
| [`ReadReservoirRightsFromHydroBase`](../../command-ref/ReadReservoirRightsFromHydroBase/ReadReservoirRightsFromHydroBase.md) | Read reservoir station rights. |
