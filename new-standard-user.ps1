# Password Inputed by User

$Password = Read-Host -AsSecureString
Write-Host $Password

# New User

New-LocalUser "IEUser" -Password $Password -FullName "Sample User" -Description "Standard User"

# Won't be added to Admin Group. Check new-admin-user.ps1 for Admin Group Command.

# If running in the console, wait for input before closing.
if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}