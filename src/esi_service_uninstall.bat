@echo off
cd %~dp0
set ESI_SCRIPT_DIR=%~dp0
for %%I in ("%ESI_SCRIPT_DIR%..\..") do set JAVA_HOME=%%~dpfI
set JAVA_HOME=%JAVA_HOME%\jdk1.7.0_40
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseCondCardMark
set ES_HEAP_SIZE=2g
service.bat stop && service.bat remove
