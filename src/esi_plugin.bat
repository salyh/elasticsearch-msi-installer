@echo off
cd %~dp0
set ESI_SCRIPT_DIR=%~dp0
for %%I in ("%ESI_SCRIPT_DIR%..\..") do set JAVA_HOME=%%~dpfI
set JAVA_HOME=%JAVA_HOME%\jdk1.7.0_40
plugin.bat %*
