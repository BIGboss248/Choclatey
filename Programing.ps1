# chocolatey config file C:\ProgramData\chocolatey\config\chocolatey.config

# Initialize and prerequisite
choco install dotnet-6.0-desktopruntime -y
choco install chocolateygui -y
choco install 7zip.install -y
choco install anydesk.in -y
choco install teamviewer -y
# virtual OS
choco install docker-desktop -y
choco install virtualbox -y
# Backup
choco install dropbox -y
choco install googledrive -y
# Coding
choco install notepadplusplus.install -y
choco install microsoft-windows-terminal -y
choco install git -y
choco install ruby -y
choco install python -y
choco install vscode.install -y
choco install pgadmin4 -y
# Internet browsers 
choco install opera-gx -y
choco install firefox -y
choco install googlechrome -y
# Network tools
choco install termius -y
choco install winscp.install -y #Transfer data to and from server
choco install nmap -y
choco install advanced-ip-scanner -y
choco install pingplotter -y
choco install wireshark -y  #network packet analyzer
#system optimisation and anty virus
choco install afedteated -y
choco install testdisk-photorec -y
# Video player
choco install vlc -y
# Game
choco install steam -y
choco install origin -y
choco install geforce-experience -y
# Possible malware in this package
choco install winsetupfromusb -y
Install-Module ps2exe -Force
Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
winget install --name "Power BI Desktop" --accept-package-agreements --accept-source-agreements
winget install --name "Ubuntu 22.04.1 LTS" --accept-package-agreements --accept-source-agreements
#####################################################################################################
# These apps need some manual installation
choco install gns3 -y   #network topology design