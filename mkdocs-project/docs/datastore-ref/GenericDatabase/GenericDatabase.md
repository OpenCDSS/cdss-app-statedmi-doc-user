# StateDMI / Datastore Reference / GenericDatabase #

* [Overview](#overview)
* [Datastore Configuration File](#datastore-configuration-file)
	+ [Microsoft Access Database Example](#microsoft-access-database-example)
	+ [SQL Server Database Example](#sql-server-database-example)

------------

## Overview ##

The generic database datastore can be used to provide general access to database tables and views,
for example with the
[`ReadTableFromDataStore`](../../command-ref/ReadTableFromDataStore/ReadTableFromDataStore.md) command.
The trade-off for generic datastores is that although tables and views can be accessed in a generic way,
there is no specific application programming interface (API) to deal with the intricacies of the
database and converting tables to more complex data objects used in modeling.
The TSTool software provides commands to convert tables to time series,
but such features are not implemented in StateDMI.

The datastore internally corresponds to an
[Open Database Connectivity](https://en.wikipedia.org/wiki/Open_Database_Connectivity)
(ODBC) connection.
The connection can be defined one of two ways:

* Define an ODBC connection using Windows tools.
The advantage of this approach is that database authentication occurs through the ODBC connection.
The disadvantage is that the connection may use a generic database driver
that does not perform as well as vendor drivers.
This approach is used when the `DatabaseEngine` and `OdbcName` configuration properties are defined for the datastore.
* Provide connection information via `DatabaseEngine`, `DatabaseServer`, `DatabaseName`,
and potentially login configuration properties,
and allow the software to use a vendor-specific JDBC
([Java Database Connectivity](https://en.wikipedia.org/wiki/Java_Database_Connectivity)) driver,
which is generally optimized for the database software.
The disadvantage of this approach is that advanced authentication interfaces have not been
implemented (this may or not be an issue depending on the security enabled for the database).

See also the
[TSTool Generic Database Datastore](http://opencdss.state.co.us/tstool/latest/doc-user/datastore-ref/GenericDatabase/GenericDatabase/)
documentation, which provides more detailed information.

## Datastore Configuration File ##

A datastore is configured by creating a datastore configuration file for the connection.
Configurations are processed at software startup to enable datastores.

The following illustrates the generic database datastore configuration file format,
which in this example is a file named `C:/Users/user/.statedmi/N/datastores/GenericExample.cfg`
(replace `N` with StateDMI major version).

```
# Configuration information for "SomeDatabaseDataStore" datastore (connection).
# The user will see the following when interacting with the datastore:
#
# Type – GenericDatabaseDataStore (required as indicated)
# Name - database identifier for use in applications, for example as the
#     input type/name information for time series identifiers (usually a short string)
# Description - database description for reports and user interfaces (a sentence)
# Enabled – whether the datastore is enabled (default=True)
#
# The following are needed to make the low-level data connection:
#
# DatabaseEngine - the database software (SqlServer)
# OdbcName – ODBC name (specify this OR the following properties)
# DatabaseServer - IP or string address for database server
# DatabaseName - database name used by the server
# DatabasePort – port number to use for database connection
# SystemLogin – the login to be used for the database connection
# SystemPassword – the password to be used for the database connection
#
# Property values can use the notation “Env:xxxx” to use an environment variable,
# “SysProp:xxxx” to use a JRE system property, or “Prompt” to prompt the user for
# the property value (system console is used – not suitable for TSTool startup from
# the Start menu)

Type = "GenericDatabaseDataStore"
Name = "SomeDatabaseDataStore"
Description = "Database on some server"
Enabled = True
DatabaseEngine = "SqlServer"
# Specify OdbcName…
OdbcName = "OdbcName"
# Or, specify the following…
DatabaseServer = "ServerName"
DatabaseName = "DatabaseName"
SystemLogin = "LoginForConnection"
SystemPassword = "PasswordForConnection"
Generic Database Datastore Configuration File
```

The `DatabaseEngine` can be one of the following values,
and is used to control internal database interactions,
such as properly formatting date/time strings for SQL statements.
The JDBC driver software is distributed with StateDMI and is updated as necessary.

**<p style="text-align: center;">
Supported Databases (`DatabaseEngine` Property Value)
</p>**

| **`DatabaseEngine`**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Description** | **JDBC Driver Information**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| -- | -- | -- |
| `Access` | Microsoft Access database | Uses system ODBC driver on Windows. |
| `Excel` | Microsoft Excel workbook (first row of worksheet should be the column names, column types are determined by scanning rows (independent of the ***Rows to Scan*** value in the ODBC DNS setup).  Refer to sheet in SQL as `Select * from [Sheet1$]` ) | Uses system ODBC driver on Windows. |
| `H2` | H2 database, **not actively used but included for historical reasons** | [JDBC Driver](http://www.h2database.com/html/cheatSheet.html) |
| `Informix` | INFORMIX database, **not actively used but included for historical reasons** | [JDBC Driver](https://www.ibm.com/support/knowledgecenter/SSGU8G_12.1.0/com.ibm.jdbc_pg.doc/ids_jdbc_013.htm) |
| `MySQL` | MySQL database | [JDBC Driver](https://www.mysql.com/products/connector/) |
| `Oracle` | Oracle database | [JDBC Driver](https://www.oracle.com/database/technologies/appdev/jdbc-downloads.html) |
| `PostgreSQL` | PostgreSQL database | [JDBC Driver](https://jdbc.postgresql.org/) |
| `SQLite` | SQLite database | [JDBC Driver](https://github.com/xerial/sqlite-jdbc/releases) |
| `SQLServer` | Microsoft SQL Server database | [JDBC Driver](https://docs.microsoft.com/en-us/sql/connect/jdbc/microsoft-jdbc-driver-for-sql-server) |

StateDMI, which is written in Java, is currently only distributed with the software driver for SQL Server
and the generic ODBC driver,
TSTool supports all of the above database.
Additional databases can be supported for StateDMI if necessary.

### Microsoft Access Database Example ###

The following example illustrates how to configure a datastore for an ODBC DSN connection to an Access database:

```
# Configuration information for Nebraska DNR development database.
# Properties are:
#
# The user will see the following when interacting with the datastore:
#
# Type - required to be GenericDatabaseDataStore
# Name - datastore identifier used in applications, for example as the
#     input type information for time series identifiers (usually a short string)
# Description - datastore description for reports and user interfaces (short phrase)
# DatabaseEngine - the database software
# OdbcName - the Open Database Connectivity Data Source Name (ODBC DSN), configured
#     in Windows Control Panel
#

Type = "GenericDatabaseDataStore"
Name = "ExampleDatabase"
Description = "Example Access Database"
DatabaseEngine = "Access"
OdbcName = "ExampleDatabase"
```

Generic Database Datastore Configuration File Using ODBC DSN Properties

### SQL Server Database Example ###
 
The following example illustrates how to configure a generic datastore for a SQL Server database,
using separate database connection properties (NOT using an ODBC DSN).
Such configurations may not be suitable because it may be desirable to
configure login information in an ODBC DSN.
The following is appropriate if a generic read-only service account is configured.

```
# Configuration information for Nebraska DNR development database.
# Properties are:
#
# The user will see the following when interacting with the datastore:
#
# Name - datastore identifier used in applications, for example as the
#     input type information for time series identifiers (usually a short string)
# Description - datastore description for reports and user interfaces (short phrase)
#

Type = "GenericDatabaseDataStore"
Name = "NDNR-Cascade-WaterRights"
Description = "INSIGHT Development Database"
DatabaseEngine = "SqlServer"
DatabaseServer = "xxxxx"
DatabaseName = "WaterRights"
SystemLogin = "guest"
SystemPassword = "guest"
```
**<p style="text-align: center;">
Generic Database Datastore Configuration File Using Database Connection Properties
</p>**
