set JAVA_OPTS=%JAVA_OPTS% -Dhttp.proxyHost=webproxy1.pta.de -Dhttp.proxyPort=80
plugin.bat -i  elasticsearch/elasticsearch-analysis-phonetic/1.6.0
plugin.bat -i  elasticsearch/elasticsearch-mapper-attachments/1.9.0
plugin.bat -url http://bit.ly/19RBF3b -install langdetect
