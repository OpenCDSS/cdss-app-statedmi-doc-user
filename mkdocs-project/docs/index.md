# CDSS / StateDMI #

This documentation provides resources to learn how to use
[Colorado's Decision Support Systems (CDSS)](http://cdss.state.co.us/Pages/CDSSHome.aspx) StateDMI software,
which automates processing data to prepare StateCU and StateMod datasets.
This documentation is generally referred to as the **"User Documentation"** in contrast to
**"Developer Documentation"**, which is relevant to software developers.

**The StateDMI documentation has in the past been maintained in Microsoft Word and PDF
and is being migrated to
[Markdown](https://en.wikipedia.org/wiki/Markdown)/[MkDocs](http://www.mkdocs.org/)
in order to provide a better user experience.
The general organization of the documentation is similar to the original Word version; however,
some reorganization has occurred because linked documentation presents opportunities
to remove duplicate information and leverage online features.
Minimal conversion of documenation has occurred as of August 2018.
Refer to the PDF version that is distributed with the software.
Upcoming releases of the StateDMI software will refer to the online documentation.
This documentation is currently being hosted on the Open Water Foundation website until an appropriate
location can be configured on the CDSS website.**

* [How to Use this Documentation](#how-to-use-this-documentation)
* [Acknowledgements](#acknowledgements)
* [Colorado's Decision Support Systems](#colorados-decision-support-systems)
* [About the Open Water Foundation](#about-the-open-water-foundation)
* [License](#license)
* [Source Repository on GitHub](#source-repository-on-github)
* [Release Notes](#release-notes)

----------------

## How to Use this Documentation ##

The documentation is organized in order of information and tasks necessary to install and use the StateDMI software.
Chapters (web pages) are provided for major topics related to software use and application.
References are provided for StateDMI [commands](command-ref/overview) and [datastores](datastore-ref/overview).
Training modules are also provided in the [Lessons](lessons/overview) section.

Use the navigation menu provided on the left side of the page to navigate the documentation sections within the full document.
Use the navigation menu provided on the right side of the page to navigate the documentation sections with a page.
The navigation menus may not be displayed if the web browser window is narrow or if viewing on a mobile device,
in which case look for a menu icon to access the menus.
Use the search feature to find documentation matching the search words.

## Acknowledgements

StateDMI has been developed by the Open Water Foundation (OWF) with significant
funding provided by the Colorado Water Conservation Board (CWCB)
in coordination with the Division of Water Resources (DWR),
as part of Colorado’s Decision Support Systems (CDSS).

StateDMI software users are encouraged to provide feedback using the
[GitHub Issues page](https://github.com/OpenWaterFoundation/cdss-app-statedmi-main/issues).

Feedback specific to CDSS functionality
can also be provided using the [CDSS email address](mailto:DNR_OpenCDSS@state.co.us).

### Software Components

The following components are used in StateDMI and require or request attribution:

* [Material Theme icons](https://material.io/icons/) - these icons are used in documentation
* More information will be added here as the open source license is finalized.

## Colorado's Decision Support Systems ##

Colorado's Decision Support Systems (CDSS, [cdss.state.co.us](http://cdss.state.co.us))
has been developed to answer important questions about Colorado's water resources.
CDSS efforts are led by the [Colorado Water Conservation Board (CWCB)](http://cwcb.state.co.us)
and [Colorado Division of Water Resources (DWR)](http://water.state.co.us).

![CDSS Website](index-images/CDSS-website.png)

CDSS has been under development since 1994, with progress occurring via a series of basin
decision support systems (DSS), starting with the Colorado River DSS (CRDSS).
Other focused DSS were also developed, such as the CWCB's Instream Flow DSS.
Each DSS resulted in enhancements to the core CDSS tools,
which are envisioned as a general platform of data and tools to help with water supply planning.

The StateDMI software was developed in CDSS to process data
from Colorado's HydroBase database into into StateCU and StateMod model data files.

In late 2016, the Open Water Foundation began the effort to move StateDMI and other CDSS software to open source licensing
and establish open source software projects, referred to as "OpenCDSS".
The OpenCDSS project is resulting in a significant evolution in how CDSS software development occurs,
such as implementing version control with Git/GitHub and modernizing the development environment and documentation.
See the [OpenCDSS Website](http://learn.openwaterfoundation.org/cdss-website-opencdss/) for more information.

## About the Open Water Foundation ##

The [Open Water Foundation](http://openwaterfoundation.org) is a 501(c)3 nonprofit social enterprise that focuses
on developing and supporting open source software for water resources,
so that organizations can make better decisions about water.
OWF also works to advance open data tools and implementation.
OWF staff have been the primary StateDMI developers on State of Colorado and other projects.

## License ##

The StateDMI software open source license is being determined in the OpenCDSS project.

The StateDMI documentation is also being determined but is expected to be a Creative Commons license of some type.

## Source Repository on GitHub ##

The source files for this documentation are maintained in a GitHub repository:
[cdss-app-statedmi-doc-user](https://github.com/OpenWaterFoundation/cdss-app-statedmi-doc-user).

This user documentation is currently maintained in a repository that is separate from StateDMI code
in order to avoid confusion with the legacy documentation and to facilitate updates.

## Release Notes ##

See the [release notes](appendix-release-notes/release-notes) section of this documentation for information about StateDMI software changes.