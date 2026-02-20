[CmdletBinding()]
param (
    [Parameter(Mandatory=$false)]
    [switch]
    $Sorted
)

$stuff = Read-Host "enter sth to bring in the picnic"
$arr = $stuff -split '\s+'

if ($Sorted) {
    $arr = $arr | Sort-Object
}

if ($stuff -eq "") {
    Write-Host "You are bringing nothing you cheap fuck."
}

elseif ($arr.Count -eq 1) {
    Write-Host "You are bringing $stuff."
}

elseif ($arr.Count -eq 2) {
    Write-Host "You are bringing $($arr[0]) and $($arr[1])."
}

elseif ($arr.Count -eq 3) {
    Write-Host "You are bringing $($arr[0]), $($arr[1]) and $($arr[2])."
}

else {
    Write-Host 'you dont have to bring all dat'
}