#requires -version 2.0
$script:ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

#$psversiontable.psversion
$thisScript = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
. ($thisScript + '\env.ps1')
. ($thisScript + '\download_unzip.ps1')

if (Test-Path -path ($thisScript+"\untgz")){
Remove-Item -Recurse -Force ($thisScript+"\untgz")}

if (Test-Path -path ($thisScript+"\download")){
Remove-Item -Recurse -Force ($thisScript+"\download")
}

$garbage = New-Item -ItemType directory -Path ($thisScript+"\download")
$garbage = New-Item -ItemType directory -Path ($thisScript+"\untgz")

$garbage = DownloadFile $esDownloadlink
$garbage = DownloadFile $javaDownloadlink

Unzip ($thisScript+"\download\"+(Split-Path -Path ([System.Uri]$esDownloadlink).LocalPath -leaf))
Untgz ($thisScript+"\download\"+(Split-Path -Path ([System.Uri]$javaDownloadlink).LocalPath -leaf))

Copy-Item ($thisScript + '\src\*.*') ($thisScript + '\untgz\elasticsearch-'+$esVersion+'\bin\')