# Test Script

Param (
    [string]$user,
    [string]$password
)


# Folders
New-Item -ItemType Directory c:\FolderCreatedbyScript


# Install iis
Install-WindowsFeature web-server -IncludeManagementTools