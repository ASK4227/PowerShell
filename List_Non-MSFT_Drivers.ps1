# Get-WindowsDriver -Online -All | Select-Object @{Name='notMSProviderNAME'; Expression = { if ($_.ProviderName -ne 'Micorosoft') {$_.ProviderName} else {$null} }}, Version, Driver 

Get-WindowsDriver -Online -All | Where-Object {$_.ProviderName -ne 'Microsoft'} | Select-Object ProviderName, WinPath, ClassDescription