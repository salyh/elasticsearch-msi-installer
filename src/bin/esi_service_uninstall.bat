@echo off
cd %~dp0
call esi_config.bat
service.bat stop & service.bat remove
