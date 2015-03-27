@echo off
rem Copyright 2014-2015 Hendrik Saly
rem Licensed under the Apache License, Version 2.0

rem Configure the plugins you want to install
call esi_plugin.bat -i  elasticsearch/elasticsearch-analysis-phonetic/2.3.0
call esi_plugin.bat -i  elasticsearch/elasticsearch-mapper-attachments/2.3.0
rem call esi_plugin.bat -url http://bit.ly/19RBF3b -install langdetect