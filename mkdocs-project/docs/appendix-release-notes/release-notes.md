# StateDMI / Release Notes #

This appendix provides information about changes that have occurred in StateDMI.
A summary table is provided below, and links to details for major versions.

* [StateDMI Version Numbering Convention](#statedmi-version-numbering-convention)
* [StateDMI Issue Icons](#statedmi-issue-icons)
* [StateDMI Version History](#statedmi-version-history)
* [Known Limitations](#known-limitations)
* [StateDMI Version Details](#statedmi-version-details) - the following are separate documentation pages
	+ [Version 5 Details](release-notes-05.md)
	+ [Version 4 Details](release-notes-04.md)
	+ [Version 3 Details](release-notes-03.md)
	+ [Version 2 Details](release-notes-02.md)
	+ [Version 1 Details](release-notes-01.md)

---------------

## StateDMI Version Numbering Convention ##

StateDMI versioning generally adheres to the following pattern.
The version may be incremented in source code but does not become official until a public software release is made.

```
Major.Minor.Maintenance[Mod]
```
where:

* `Major` is a number indicating a major change to the software
* `Minor` is a number indicating a minor change to the software
* `Maintenance` is a number indicating a maintenance release,
for example to fix a bug with no new features
* `Mod` is an optional modifier, for example `dev` for development version.
* Numbers have traditionally been two digits and zero-padded;
however, the zero-padding convention may be abandoned in the future.

The above version string is used in the software as follows, where `Version` is the version as noted above:

* installation folder on Windows is `C:\CDSS\StateDMI-Version`
* Windows ***Start*** menu is ***Start / CDSS / StateDMI-Version***
* Windows install file is `StateDMI_CDSS_Version_Setup.exe`

## StateDMI Issue Icons ##

The following icons are used to indicate the type of issue in release notes.

* ![limitation](limitation.png) **Known Limitation** – A known limitation has been documented and may impact the user.
The limitation will be addressed in a future release.
* ![bug](bug.png) **Bug Fix** – A bug has been fixed.  Users should evaluate whether their work is impacted.
Sometimes bug fixes impact internal code and changes may not be very visible to users.
* ![remove](remove.png) **Remove** – A feature has been removed, generally because functionality
has been migrated to other code or the functionality is no longer needed (e.g., a change in methodology
has resulted in a change in software features).
* ![change](change.png) **Update/Change** – An existing feature has been changed or enhanced.
Backward compatibility is usually retained.  Modifications to an existing command are considered a change.
* ![new](new.png) **New Feature** – A new feature has been added, such as a new command.
New features may or may not be obvious to users but will generally be visible in menus.

## StateDMI Version History ##

The following table summarizes the StateDMI release history.
See the StateDMI Version Details links above for more detailed information about each version.
Only recent versions are documented in detail.
Comments for minor versions may be listed under a version that is publicly released.
Release note items are categorized as follows,
and release note items for a version are typically listed in the same order as shown to emphasize impacts on software users.

**<p style="text-align: center;">
StateDMI Version History Summary (most current at top)
</p>**

|**StateDMI Version(s)**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Summary of Major Changes in Version**|**Release Date**|
|--|--|--|
|[5.00.01 - 5.0.11](release-notes-05.md)|Major update including enabling web services, datastores, tables, Excel integration, and new parcel processing commands. | 2021-06-03 |

## Known Limitations ##

* Releases with `dev` in the version indicate active development.
A final release is made when new features are tested.
