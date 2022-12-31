choco install foxitreader -y
choco install anydesk -y
choco install googlechrome -y
choco install firefox -y
choco install 7zip.install -y
choco install vlc -y
choco install chocolateygui -y
Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
winget install --name "HP Smart" --accept-package-agreements --accept-source-agreements
winget install --name "notepad++" --accept-package-agreements --accept-source-agreements
winget install --name "Windows Terminal" --accept-package-agreements --accept-source-agreements
winget install --name "python 3.11" --accept-package-agreements --accept-source-agreements
