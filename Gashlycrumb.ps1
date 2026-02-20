[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $file = "C:\Users\Ahmad\OneDrive\Documents\txt files\gashlycrumb.txt"
)

$letter = Read-Host "Enter a letter or 2 to retrieve a sentence"

if ($letter.Length -eq 0) {

    Write-Host "You aint pass nothing"
}

elseif ($letter.Length -eq 1) {

    $Capitilized_letter = $letter.ToUpper()
    
    $result = Select-String -Path $file -Pattern "^$Capitilized_letter" | Select-Object -ExpandProperty Line
    
    if ($result) {
        
        Write-Host $result

    }
    else {
        
        Write-Host "this $letter aint in the file"
    
    }
}
elseif ($letter.Length -gt 1) {
    
    $letters = $letter -split ',' | ForEach-Object { $_.Trim() }

    foreach ($lett in $letters) {
        
        $Capitilized_letter = $lett.ToUpper()
        
        $result = Select-String -Path $file -Pattern "^$Capitilized_letter" | Select-Object -ExpandProperty Line
        
        if ($result) {
            
            Write-Host $result
        
        }
        else {
            
            Write-Host "this $lett aint in the file"
        
        }
    }
}