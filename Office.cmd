choco install foxitreader --version 12.1.0.15250 -y
choco install anydesk --version 7.1.7 -y
choco install googlechrome --version 108.0.5359.125 -y
choco install firefox --version 108.0.1 -y
choco install 7zip.install --version 22.1 -y
choco install vlc --version 3.0.18 -y
choco install chocolateygui --version 1.1.0 -y
choco install puppet-agent -ySet-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
winget install --name "HP Smart" --accept-package-agreements --accept-source-agreements
winget install --name "notepad++" --accept-package-agreements --accept-source-agreements
winget install --name "Windows Terminal" --accept-package-agreements --accept-source-agreements
winget install --name "python 3.11" --accept-package-agreements --accept-source-agreements
