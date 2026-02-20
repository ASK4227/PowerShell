# Parameter help description
[string]
$Namez = 'World'

$user_input = Read-Host "Enter a name"
if ($user_input -ne "") {
    Write-Host "Hello $user_input"
}
else {
    Write-Host "Hello $Namez"
}
