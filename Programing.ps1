# chocolatey config file C:\ProgramData\chocolatey\config\chocolatey.config

#initialize and prerequisite
choco install dotnet-6.0-desktopruntime -y
choco install chocolateygui -y
choco install 7zip.install -y
choco install anydesk.in
# virtual OS
choco install docker-desktop -y
choco install virtualbox -y
#backup
choco install dropbox -y
choco install googledrive -y
#coding
choco install notepadplusplus.install -y
choco install microsoft-windows-terminal -y
choco install git -y
choco install ruby -y
choco install python -y
choco install vscode.install -y
choco install pgadmin4 -y
# Browsers
choco install opera-gx -y
choco install firefox -y
choco install googlechrome -y
choco install termius -y
#video player
choco install vlc -y
# Game
choco install steam -y
choco install origin -y
#Possible malware in this package
choco install winsetupfromusb -y
Install-Module ps2exe -Force
Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
winget install --name "Power BI Desktop" --accept-package-agreements --accept-source-agreements
winget install --name "Ubuntu 22.04.1 LTS" --accept-package-agreements --accept-source-agreements