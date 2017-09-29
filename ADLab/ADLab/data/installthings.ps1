
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
    [switch]$UseSsl
)


New-Item -ItemType Directory c:\CreatedByScript
 $LogFile = ("AD-Account-Creation-{0:yyyy-MM-dd-HH-mm-ss}.log" -f (Get-Date)) 
 $Log = "c:\CreatedByScript\$LogFile" 
 Start-Transcript $Log
 
 Import-Module ActiveDirectory
 New-ADUser -Name TestUser -DisplayName TestUser -SamAccountName TestUser -UserPrincipalName TestUser@contoso.com -GivenName Test -Surname User -Description TestUser -AccountPassword (ConvertTo-SecureString P@ssw0rd123456 -AsPlainText -Force) -Enabled $true -Path 'CN=Users,DC=contoso,DC=com' -ChangePasswordAtLogon $true –PasswordNeverExpires $false -AccountExpirationDate $AdExpire -Verbose 

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
	             
        # New-ADUser -Name $Sam -DisplayName "$DisplayName" -SamAccountName $Sam -UserPrincipalName $Upn -GivenName "$UserFirstName" -Surname "$UserLastName" -Description "$Description" -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) -Enabled $true -Path "$OrganisationalUnit" -ChangePasswordAtLogon $true –PasswordNeverExpires $false -AccountExpirationDate $AdExpire -Verbose 
         New-ADUser -Name "$Sam" -DisplayName "$DisplayName" -SamAccountName "$Sam" -UserPrincipalName "$Upn" -GivenName "$UserFirstName" -Surname "$UserLastName" -Description TestUser -AccountPassword (ConvertTo-SecureString P@ss0rd123456 -AsPlainText -Force) -Enabled $true -Path 'CN=Users,DC=contoso,DC=com' -ChangePasswordAtLogon $true –PasswordNeverExpires $false -Verbose 
    } 

Stop-Transcript

 