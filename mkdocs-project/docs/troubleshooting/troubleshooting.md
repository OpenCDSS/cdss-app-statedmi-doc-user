# StateDMI / Troubleshooting #

This chapter discusses how to troubleshoot StateDMI problems.

The StateDMI log file is created in the logs directory under the main installation directory
(e.g., `C:\CDSS\StateDMI-03.09.01\logs\StateDMI_USER.log)`, where the version will agree with the software version.

The most common problems are program configuration (see the
[Installation and Configuration Appendix](../appendix-install/install.md)),
user input error (see the [Command Reference](../command-ref/overview.md) for a summary of commands),
and database errors (more below).
Other problems should be reported to the StateDMI developers.
When contacting support, provide as much information as possible,
including system information and the command file that is being run.
For example, use the ***Tools / Diagnostics*** tool to turn on the debugging
checkbox and then get the system information from Help…About.  Send this information to support.

Checks have been implemented to detect common errors and use of the `Check*` and
[`WriteCheckFile`](../command-ref/WriteCheckFile/WriteCheckFile.md) commands is recommended.
However, to fully diagnose a problem you may need to refer to the log file.
The log file is accessible from the ***Tools / Diagnostics – View Log File*** dialog.

In general, when running StateDMI, you will be warned about problems with yellow and red markers displayed next to commands in the command list.

Due to the complexity of the State of Colorado’s HydroBase database and other input sources and the complexity of some commands,
user and database errors can occur for a number of reasons.
The following table summarizes common errors and their fixes.

**<p style="text-align: center;">
StateDMI Errors and Possible Solutions
</p>**

| **Error** | **Possible solutions** |
|--|--|
| StateDMI does not run (error at start-up). | <ol><li>	StateDMI uses a startup program to run and all files related to StateDMI are stored in the installation folder.  If the software does not run, files may have been moved, removed, or modified, or there may be an incompatibility with the computer.  Try running the `\CDSS\StateDMI-Version\bin\StateDMI.exe` program from a command shell window to see if messages are printed.</li><li>Review problems reported in the `\CDSS\StateDMI-Version\logs\StateDMI_USER.log` file.</li><li>Report the problem to support.</li></ol> |
| StateDMI fails on large queries. | StateDMI may run out of memory on large queries.  Increase the memory by changing the value of the `-mxNNm` option in the `\CDSS\StateDMI-Version\bin\StateDMI.l4j.ini` file.  There is a limit of approximately 1440 MB on 32-bit operating systems.|
| Commands appear to be split into pieces when processed and errors occur for the partial commands. | Command files are simple text files and each command must exist on one line.  Comments are indicated by lines that start with a # character.  When editing commands files with a text editor, or when pasting commands into the comment editor dialog, `Ctrl-M` characters (carriage return) may be inserted by some software.  These characters will display as ^M in some software or a box in Notepad.<br><br>To correct the problem, remove the `Ctrl-M` characters with an editor that is able to display the characters. |
| Unable to find files correctly. | The working directory is assumed to be the same as the location of the most recently opened or saved command file.  The current working directory is generally displayed by editor dialogs that read or write files.  If files are not being found, verify that the path to the file is correct, whether specified as an absolute path or relative to the command file.  Confirm that the command file is saved to a location relative to the files that are being referenced. |
| Unexpected failure. | If there was a serious error in input, StateDMI may quit processing input.  See the log file for details.  If the log file does not offer insight, contact support. |
