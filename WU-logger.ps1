<#In the Windows Update log, you want to display only the lines
where the agent began installing files. You may need to open the 
file in Notepad to figure out what string you need to select. 
You may need to run Get-WindowsUpdateLog, 
and the corresponding log will be placed on your desktop.#>

Get-Content -Path "C:\Users\Ahmad\OneDrive\Desktop\WindowsUpdate.log" | Select-String -Pattern "[\W+\w+]Installing" | Out-File "D:\agentz2.txt" 