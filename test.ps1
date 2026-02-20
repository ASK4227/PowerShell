[CmdletBinding()]
param (
    [Parameter(Mandatory=$true, helpmessage = 'Enter the computer name')]
    [Alias('hostname')]
    [string]$ComputerName
    )
Write-Verbose "Getting network adapter information for $ComputerName"
Get-CimInstance win32_networkadapter -ComputerName $ComputerName |
Where-Object { $_.PhysicalAdapter } |
Select-Object MACAddress,AdapterType,DeviceID,Name,Speed