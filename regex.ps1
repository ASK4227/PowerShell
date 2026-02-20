#Get all files in your Windows or /usr directory that have a two-digitnumber as part of the name.

Get-ChildItem -Path "C:\Users\Ahmad" -Recurse  -File | Where-Object {$_.Name -match "\d{2}"} `
| Format-List -Property Name, DirectoryName

