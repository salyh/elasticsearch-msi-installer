@echo off
rem Call "%VS100COMNTOOLS%vsvars32.bat"

rem start cmd /k MsBuild %BuildLocation% /p:Zip

rem set SourceControlLocation="%SourceFolder:"=%\%ZipFileName:"=%"

set WIX_HOME=C:\Program Files (x86)\WiX Toolset v3.7
set ROOT=%~dp0\untgz

del "%~dp0\*.msi" 
del "%~dp0\*.wixobj" 
del "%~dp0\FileFragment.wxs" 
del "%~dp0\*.cab" 
del "%~dp0\*.wixpdb"


"%WIX_HOME%\bin\heat.exe" dir "%ROOT%" -cg MyFiles -gg -scom -sreg -sfrag -dr INSTALLDIR -out "FileFragment.wxs" -var var.InstallerPath
	
"%WIX_HOME%\bin\candle.exe" -d"InstallerPath=%ROOT%"  -dPlatform=x86 -arch x86 FileFragment.wxs  Product.wxs
rem "%WIX_HOME%\bin\candle.exe" -d"InstallerPath=%ROOT%" Product.wxs
"%WIX_HOME%\bin\light.exe" -out "ESI-0.90.5.0.msi" -cultures:null -spdb -sval  FileFragment.wixobj Product.wixobj
