del "%~dp0\*.msi" 
del "%~dp0\*.wixobj" 
del "%~dp0\FileFragment.wxs" 
del "%~dp0\*.cab" 
del "%~dp0\*.wixpdb"
rmdir "%~dp0\untgz" /s /q
rmdir "%~dp0\download" /s /q
