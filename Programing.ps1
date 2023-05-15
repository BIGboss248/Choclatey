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
'________________Initialize and prerequisite________________'
choco install dotnet-6.0-desktopruntime -y
choco install chocolateygui -y
choco install 7zip.install -y
choco install anydesk.install -y
'________________virtual OS________________'
choco install docker-desktop -y
choco install virtualbox -y
'GNS3 need to be manualy installed'
'________________Backup________________'
choco install dropbox -y
choco install googledrive -y
'________________Coding________________'
choco install notepadplusplus.install -y
choco install git -y
choco install python -y
choco install vscode.install -y
'________________Internet browsers________________' 
#choco install firefox -y
#choco install googlechrome -y
choco install internet-download-manager -y
'________________Network tools________________'
choco install termius -y
choco install advanced-ip-scanner -y
choco install wireshark -y  #network packet analyzer
choco install winsetupfromusb -y #Bootable usb
# choco install nexus-repository -y
'________________system optimisation and anti virus________________'
winget install --id Microsoft.Sysinternals.ProcessExplorer
'________________Video player________________'
choco install vlc -y
'________________Game________________'
choco install steam -y
choco install geforce-experience -y
Install-Module ps2exe -Force #Convert powershell script to executable file
winget install --name "Power BI Desktop" --accept-package-agreements --accept-source-agreements
winget install --name "Ubuntu 22.04.1 LTS" --accept-package-agreements --accept-source-agreements
#####################################################################################################
# These apps need some manual installation
