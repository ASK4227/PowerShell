[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]
    $file
)


foreach ($fil in $file) {

    Get-ChildItem -Path $fil -File -ErrorAction SilentlyContinue | ForEach-Object {

        $word_counter = Get-Content -Path $_.FullName | Measure-Object -Word -Line -Character

        Write-Host "Words: $($word_counter.Words) | Lines: $($word_counter.Lines) | Characters: $($word_counter.Characters) : FilePath $($_.FullName)"

    }

}
