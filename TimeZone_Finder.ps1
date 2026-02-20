[string]$urTimeZone = Read-Host 'Enter a name'

try {
    Get-TimeZone -Id $urTimeZone -erroraction Stop
}
catch {
    Write-Host 'You entered something wrong'
}

