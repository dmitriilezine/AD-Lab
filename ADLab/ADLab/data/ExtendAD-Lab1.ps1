#
# ExtendAD-Lab1.ps1
#

Param (
    [string]$user,
    [string]$password,
	[string]$ou,
    [string]$upn
)

# Folders
New-Item -ItemType Directory c:\ExtendADLab1
New-Item -ItemType Directory c:\ExtendADLab1\scripts

$LogFile = ("Get-Script-{0:yyyy-MM-dd-HH-mm-ss}.log" -f (Get-Date)) 
$Log = "c:\ExtendADLab1\$LogFile" 
Start-Transcript $Log

# Download Scripts

#Invoke-WebRequest  https://raw.githubusercontent.com/dmitriilezine/AD-Lab/master/ADLab/ADLab/data/import.zip -OutFile c:\ExtendADLab1\import.zip
#Expand-Archive c:\ExtendADLab1\import.zip c:\ExtendADLab1\scripts -Force

# Start-Process 
#powershell -ExecutionPolicy Unrestricted -File c:\ExtendADLab1\scripts\ExportImport-AD.ps1 -RestoreOUs -RestoreUsers -RestoreGroups -RestoreMemberships -RestorePolicies -RestoreComputers -BackupFolder c:\ExtendADLab1\scripts\ -SettingsFile c:\ExtendADLab1\scripts\settingfile.xml
# powershell -ExecutionPolicy Unrestricted -File c:\ExtendAD\scripts\extendaddslab1.ps1 -aduser $user -adpassword $password -ou $ou -upn $upn

Stop-Transcript

#end