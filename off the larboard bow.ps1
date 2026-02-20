[CmdletBinding()]
param (
    [Parameter(Mandatory=$true, HelpMessage='Enter an announcement')]
    [string]
    $announcement
)

$vowels = @('a','e','i'.'o','u')

$announcement.ToLower()

if ($announcement[0] -in $vowels) {
    Write-Host "Ahoy, Captain, an $announcement off the larboard bow!"
}
else {
    Write-Host "Ahoy, Captain, a $announcement off the larboard bow!"
}