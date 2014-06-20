elasticsearch-msi-installer
===========================

A set of scripts (on top of WIX Toolset) to build  MSI installer for installing Elasticsearch as a Windows service.

They will fetch Elasticsearch and Oracle Java Server JRE (and WIX Toolset) and creates an MSI installer with an embedded JRE.
There are two ways to generate the installer, the easy and the customizable way:

Easy way:
Just download/clone the repository and double click DUPC.cmd and if its finished then double click MKMSI.cmd
Thats it, find your MSI installer in target\msi

Elasticsearch will be installed into "C:\Program Files\Elasticsearch\content".

Customizable way:
* Revise config.cmd (change ES/JAVA/WIX versions and folder names)
* Revise esidist_plugininstall.bat (add/remove ES plugins)
* Run DUPC.cmd
* Revise elasticsearch.yml
* Revise logging.yml
* Revise JAVA_OPTS and Java memory config (heap size)
* Change installation path: https://github.com/salyh/elasticsearch-msi-installer/wiki/Change-installation-path
* Run MKMSI.cmd


Prerequisites for building the MSI package:
* Broadband internet connection (http proxy is also supported)
* Win 7 64bit or Win 2008 64bit with Powershell 2 (Win 2012 64bit may work or, not tested yet)

Prerequisites for installing the MSI package:
* Win 7 64bit or Win 2008 64bit or Win 2012 64bit

Download the msi (as binary) from here if you do not want to build it on your own: 
https://github.com/salyh/elasticsearch-msi-installer/releases (Approx 130 MB including JRE)
