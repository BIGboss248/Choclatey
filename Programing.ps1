# chocolatey config file C:\ProgramData\chocolatey\config\chocolatey.config


# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
'________________running with full privileges________________'
Set-ExecutionPolicy Bypass -Scope Process -Force;


'________________Doc viewer and editer________________'
choco install foxitreader -y
choco install adobereader -y
'________________Initialize and prerequisite________________'
choco install dotnet-6.0-desktopruntime -y
choco install chocolateygui -y
choco install 7zip.install -y
choco install anydesk.install
choco install teamviewer -y
'________________virtual OS________________'
choco install docker-desktop -y
choco install virtualbox -y
'________________Backup________________'
choco install dropbox -y
choco install googledrive -y
'________________Coding________________'
choco install notepadplusplus.install -y
choco install microsoft-windows-terminal -y
choco install git -y
choco install ruby -y
choco install python -y
choco install vscode.install -y
choco install pgadmin4 -y
'________________Internet browsers________________' 
choco install opera-gx -y
choco install firefox -y
choco install googlechrome -y
'________________Network tools________________'
choco install termius -y
choco install nmap -y
choco install advanced-ip-scanner -y
choco install pingplotter -y
choco install wireshark -y  #network packet analyzer
choco install winsetupfromusb -y #Bootable usb
choco install nexus-repository -y
choco install winbox -y # Mikrotik Router OS
'________________system optimisation and anty virus________________'
choco install afedteated -y
choco install testdisk-photorec -y
'________________Video player________________'
choco install vlc -y
'________________Game________________'
choco install steam -y
choco install ea-app
choco install geforce-experience -y
Install-Module ps2exe -Force #Convert powershell script to executable file
Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\' -Name 'ProxyEnable' -Value 0
winget install --name "Power BI Desktop" --accept-package-agreements --accept-source-agreements
winget install --name "Ubuntu 22.04.1 LTS" --accept-package-agreements --accept-source-agreements
#####################################################################################################
# These apps need some manual installation
choco install gns3 -y   #network topology design