# Create Users in ADDS
# Folders

[CmdletBinding()] 
Param (
    [string]$user,
    [string]$password,
	[parameter(Mandatory=$true)] 
    [alias("csv")] 
    $UsersList, 
    [parameter(Mandatory=$true)] 
    [alias("ou")] 
    $OrganisationalUnit, 
    [parameter(Mandatory=$true)] 
    [alias("upn")] 
    $AdUpn, 
    [alias("group")] 
    $AdGroup, 
    [alias("expire")] 
    $AdExpire,
    [switch]$UseSsl
)

Import-Module ActiveDirectory
New-Item -ItemType Directory c:\CreatedByScript
 $LogFile = ("AD-Account-Creation-{0:yyyy-MM-dd-HH-mm-ss}.log" -f (Get-Date)) 
 $Log = "c:\CreatedByScript\$LogFile" 
 Start-Transcript $Log
 
## If users list csv file exists then run the script 
If (Test-Path $userslist) 
{ 
    $UserCsv = Import-Csv -Path "$UsersList" 
 
    ForEach ($User in $UserCsv) 
    { 
        $DisplayName = $User.Firstname + " " + $User.Lastname 
        $UserFirstName = $User.Firstname 
        $UserLastName = $User.Lastname 
        $Sam = $User.SAM 
        $Upn = $Sam + "@$AdUpn" 
        $Description = $DisplayName 
        $Password = $User.Password 
 
        $UserExist = Get-ADUser -filter "SamAccountName -eq '$Sam'" 
 
        If ($UserExist -eq $null) 
        { 
            New-ADUser -Name $Sam -DisplayName "$DisplayName" -SamAccountName $Sam -UserPrincipalName $Upn -GivenName "$UserFirstName" -Surname "$UserLastName" -Description "$Description" -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) -Enabled $true -Path "$OrganisationalUnit" -ChangePasswordAtLogon $true –PasswordNeverExpires $false -AccountExpirationDate $AdExpire -Verbose 
         
            If ($AdGroup) 
            { 
                Add-ADGroupMember "$AdGroup" $Sam -Verbose 
            } 
        } 
 
        Else 
        { 
            Write-Host "User with SAM:$Sam already exists" 
        } 
    } 

	Stop-Transcript
} 
 
Else 
{ 
    Write-Host "" 
    Write-Host "There's no user list to work with." 
    Write-Host "" 
} 
 
## End
 