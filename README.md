elasticsearch-msi-installer
===========================

A set of scripts to build (on top of WIX Toolset) MSI installer for installing elasticsearch as a windows service.

They will fetch Elasticsearch and Java Server JRE (and WIX Toolset) and creates an MSI installer with an embedded JRE.
There are two ways to generate the installer, the easy and the customizable way:

Easy way:
Just download/clone the repository and double click DUPC.cmd and if its finished then double click MKMSI.cmd
Thats it, find your installer (.mis and .cab's) in target\msi

Customizable way:
* Revise config.cmd (change ES/JAVA/WIX versions and folder names)
* Revise esidist_plugininstall.bat (add/remove ES plugins)
* Run DUPC.cmd
* Revise elasticsearch.yml
* Revise logging.yml
* Revise JAVA_OPTS and Java memory config (heap size)
* Run MKMSI.cmd

Prerequisites for building the MSI package:
* Broadband internet connection (proxy is also supported)
* Win 7 64bit or Win 2008 64bit with Powershell 2 (Win 2012 64bit may work or, not tested yet)

Prerequisites for installing the MSI package:
* Win 7 64bit or Win 2008 64bit (Win 2012 64bit may work or, not tested yet)

