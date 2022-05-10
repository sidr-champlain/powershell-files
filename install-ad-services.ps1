﻿# Installing AD on Server Core

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# If running in the console, wait for input before closing.
if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}