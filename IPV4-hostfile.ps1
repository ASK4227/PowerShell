# If you are on a Linux (or Windows) machine, find the lines of the HOSTS file that contain IPV4 addresses.

Get-Content -Path "C:\Windows\System32\drivers\etc\hosts" | Select-String -Pattern "^\W*\w*\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"
