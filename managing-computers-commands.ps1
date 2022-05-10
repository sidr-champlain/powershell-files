# Processor Information

Get-CimInstance -ClassName Win32_Processor | Select-Object -ExcludeProperty "CIM*"

Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property SystemType

# Computer Manufacturer and Model

Get-CimInstance -ClassName Win32_ComputerSystem

# Operating System Version Information

Get-CimInstance -ClassName Win32_OperatingSystem |
  Select-Object -Property BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion

Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property Build*,OSType,ServicePack*

#  Local Users and Owner

Get-CimInstance -ClassName Win32_OperatingSystem |
  Select-Object -Property NumberOfLicensedUsers,NumberOfUsers,RegisteredUser

Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property *user*

# Available Disk Space

Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" |
  Measure-Object -Property FreeSpace,Size -Sum |
    Select-Object -Property Property,Sum

# Logon Session Information

Get-CimInstance -ClassName Win32_LogonSession

Get-CimInstance -ClassName Win32_ComputerSystem -Property UserName

# Local Time from a Computer

Get-CimInstance -ClassName Win32_LocalTime

# If running in the console, wait for input before closing.

if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}