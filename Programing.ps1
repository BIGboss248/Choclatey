choco install git -y
choco install docker-desktop -y
choco install virtualbox -y
choco install chocolateygui -y
choco install 7zip.install -y
choco install pgadmin4 -y
choco install spotify -y
Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
winget install --name "PuTTY" --accept-package-agreements --accept-source-agreements
winget install --name "Windows Terminal" --accept-package-agreements --accept-source-agreements
winget install --name "notepad++" --accept-package-agreements --accept-source-agreements
winget install --name "python 3.11" --accept-package-agreements --accept-source-agreements
winget install --name "Visual Studio Code" --accept-package-agreements --accept-source-agreements
winget install --name "Power BI Desktop" --accept-package-agreements --accept-source-agreements
winget install --name "Ubuntu 22.04.1 LTS" --accept-package-agreements --accept-source-agreements