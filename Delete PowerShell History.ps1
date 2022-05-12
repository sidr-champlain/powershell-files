# Delete PowerShell History 

cd \Users\[User]\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\

rm .\ConsoleHost_history.txt

# If running in the console, wait for input before closing.

if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}