# StateDMI / Command / ListFiles #

* [Overview](#overview)
* [Command Editor](#command-editor)
* [Command Syntax](#command-syntax)
* [Examples](#examples)
* [Troubleshooting](#troubleshooting)
* [See Also](#see-also)

-------------------------

## Overview ##

The `ListFiles` command lists files in a folder and saves the list to a table.
The table can then be used to drive processes.
The resulting table will include the following columns:

* `FileName` – name of the file without leading path
* `RelativePath` – name of the file as a relative path (relative to the command file working directory)
* `AbsolutePath` – name of the file as the full absolute path

## Command Editor ##

The following dialog is used to edit the command and illustrates the command syntax.
<a href="../ListFiles.png">See also the full-size image.</a>

**<p style="text-align: center;">
![ListFiles](ListFiles.png)
</p>**

**<p style="text-align: center;">
`ListFiles` Command Editor Showing Conditions Test
</p>**

## Command Syntax ##

The command syntax is as follows:

```text
ListFiles(Parameter="Value",...)
```
**<p style="text-align: center;">
Command Parameters
</p>**

|**Parameter**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| **Description** | **Default**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| --------------|-----------------|----------------- |
|`Folder`<br>**required**|The path of the folder for which to list files. | None - must be specified. |
|`IncludeFiles`|A pattern indicating files to include from Folder.  Use `*` in the filename for a wildcard.| All files will be included.|
|`ExcludeFiles`|A pattern indicating files to exclude from Folder, checked after the `IncludeFiles` parameter is checked.  Use `*` in the filename for a wildcard.| No files will be excluded.|
|`TableID`<br>**required**|The identifier for the table to output the list.  If the table does not exist, it will be created.  See also `Append`.|None - must be specified.|
|`Append`|Indicate whether list output should be appended to the table.  This allows multiple `ListFiles` commands to be used to create a larger list.|`False` - the table will contain only the current output list.|

## Examples ##

See the [automated tests](https://github.com/OpenCDSS/cdss-app-statedmi-test/tree/master/test/regression/commands/ListFiles).

## Troubleshooting ##

## See Also ##
