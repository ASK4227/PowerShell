$DriveName = Read-Host('Enter Drive Name')
try {
    Get-PSDrive -Name $DriveName -PSProvider FileSystem -ErrorAction Stop | select Name , @{N="FreeSpaceGB"; Expression={$_.Free / 1GB}}
}
catch {
    Write-Host('You entered a wrong name')
    }
