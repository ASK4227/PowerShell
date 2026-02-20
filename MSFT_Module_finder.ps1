# Find all modules loaded on your computer that are from Microsoft, and display the name, version number, author, and company name

Get-Module -ListAvailable | Where-Object {$_.Author -match '\w*\W*Microsoft\w*\W*'} | Format-List -Property Name, Author, Version, CompanyName

# Get-Module -ListAvailable | where {$_.Author -like '*Microsoft*'} | Select-Object Name, Author