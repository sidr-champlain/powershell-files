﻿# List IP Address of computer

Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=$true |
    Select-Object -ExpandProperty IPAddress

# If running in the console, wait for input before closing.
if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}