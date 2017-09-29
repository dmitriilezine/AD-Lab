#
# ExtendAD.ps1
#

Param (
    [string]$user,
    [string]$password,
	[string]$ou,
    [string]$upn
)

# Folders
New-Item -ItemType Directory c:\ExtendAD
New-Item -ItemType Directory c:\ExtendAD\scripts

$LogFile = ("Get-Script-{0:yyyy-MM-dd-HH-mm-ss}.log" -f (Get-Date)) 
$Log = "c:\ExtendAD\$LogFile" 
Start-Transcript $Log

# Download Scripts

Invoke-WebRequest  https://raw.githubusercontent.com/dmitriilezine/AD-Lab/master/ADLab/ADLab/data/extendadds.zip -OutFile c:\ExtendAD\extendadds.zip
Expand-Archive c:\ExtendAD\extendadds.zip c:\ExtendAD\scripts -Force

# Start-Process 
powershell -ExecutionPolicy Unrestricted -File c:\ExtendAD\scripts\extendadds.ps1 -aduser $user -adpassword $password -ou $ou -upn $upn
# powershell -ExecutionPolicy Unrestricted -File c:\ExtendAD\scripts\extendadds.ps1 -ou $ou -upn $upn

Stop-Transcript

#end