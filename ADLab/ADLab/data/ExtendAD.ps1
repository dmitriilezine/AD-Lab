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

Invoke-WebRequest  https://github.com/.zip -OutFile c:\ExtendAD\extendadds.zip
Expand-Archive c:\ExtendAD\extendad.zip c:\ExtendAD\scripts

# Start-Process 
powershell -ExecutionPolicy Unrestricted -File c:\ExtendAD\scripts\extendadds.ps1 -user $user -password $password -ou $ou -upn $upn

Stop-Transcript

#end