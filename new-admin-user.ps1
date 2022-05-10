# Password Inputed by User

$Password = Read-Host -AsSecureString
Write-Host $Password

# New User

New-LocalUser "Manager" -Password $Password -FullName "Backup Admin User" -Description "Admin User"

# Add to Admin Group

Add-LocalGroupMember -Group "Administrators" -Member "Manager"

# If running in the console, wait for input before closing.
if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}