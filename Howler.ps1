$word = Read-Host "Enter a sentence"

if ( Test-Path -Path $word -PathType Leaf) {
    
    Get-Content -Path $word | ForEach-Object {$_.ToUpper()}
}

else {
    $word_in_Caps = $word.ToUpper()
    
    Write-Host $word_in_Caps
}