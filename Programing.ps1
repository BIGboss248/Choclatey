choco install git -y
choco install docker-desktop -y
choco install virtualbox -y
choco install chocolateygui -y
choco install 7zip.install -y
choco install pgadmin4 -y
choco install spotify -y
choco install ruby -y
choco install dropbox -y
choco install googledrive -y
choco install chef-workstation -y
choco install putty.install -y
choco install microsoft-windows-terminal -y
choco install notepadplusplus.install -y
choco install python -y
choco install vscode.install -y
choco install opera-gx -y
choco install firefox -y
choco install googlechrome -y
choco install winsetupfromusb -y
#Possible malware in this package
choco install winsetupfromusb -y
Install-Module ps2exe -Force
Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
winget install --name "Power BI Desktop" --accept-package-agreements --accept-source-agreements
winget install --name "Ubuntu 22.04.1 LTS" --accept-package-agreements --accept-source-agreements