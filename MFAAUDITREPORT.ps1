Connect-Entra -Scopes 'User.Read.All', 'UserAuthenticationMethod.Read.All', 'Policy.Read.All'

$users = Get-EntraUser -All -Select Id, UserPrincipalName, DisplayName
Write-Output "Amount of requests within 'fetchAll': $($users.Length)"

$usersReport = @()

$users | ForEach-Object {
    $userObj = New-Object -TypeName PSObject
    $userObj | Add-Member -Name 'Id' -MemberType NoteProperty -Value $_.Id
    $userObj | Add-Member -Name 'DisplayName' -MemberType NoteProperty -Value $_.DisplayName
    $userObj | Add-Member -Name 'UserPrincipalName' -MemberType NoteProperty -Value $_.UserPrincipalName

    # Get MFA state
    $mfaRequirement = Get-EntraBetaUserAuthenticationRequirement -UserId $_.Id
    $userObj | Add-Member -Name 'PerUserMFAState' -MemberType NoteProperty -Value $mfaRequirement.PerUserMFAState

    # Get license details
    $licenseDetails = Get-EntraUserLicenseDetail -UserId $_.Id
    if ($licenseDetails) {
        $skuPartNumbers = $licenseDetails.skuPartNumber -join ', '
    } else {
        $skuPartNumbers = 'None'
    }
    $userObj | Add-Member -Name 'License' -MemberType NoteProperty -Value $skuPartNumbers

    # Add to report array
    $usersReport += $userObj
}

# Export to CSV
$usersReport | Export-CSV -Path .\Mfareportdass.csv -NoTypeInformation
