# Shutdown Computer

Get-CimInstance -ClassName Win32_OperatingSystem | Invoke-CimMethod -MethodName Shutdown
