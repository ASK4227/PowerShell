[CmdletBinding()]
param (
    [Parameter(HelpMessage="You have to enter a sentence. If you don't specify a vowel, `
    the letter A will be chosen by default")]
    [char]
    $Vowels = "a"
)

$sentence = Read-Host "Enter a sentence please"

$new_sentence = $sentence -replace '[aeiouAEIOU]', $Vowels

Write-Host $new_sentence