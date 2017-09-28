# Create Users in ADDS

Param (
    [string]$user,
    [string]$password
)

Import-Module ActiveDirectory

Import-Csv .\ad-data.csv | foreach-object { 
$userprinicpalname = $_.SamAccountName + "@contoso.com" 
New-ADUser -SamAccountName $_.SamAccountName -UserPrincipalName $userprinicpalname -Name $_.name -DisplayName $_.name -GivenName $_.cn -SurName $_.sn -Department $_.Department -Path "CN=Users,DC=contoso,DC=com" -AccountPassword (ConvertTo-SecureString "Microsoft~1;" -AsPlainText -force) -Enabled $True -PasswordNeverExpires $True -PassThru }