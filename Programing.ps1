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

choco install cygwin  -y
choco install starship  -y
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
# Install zsh and "oh my zsh" and power10k
winget install Canonical.Ubuntu.2204
winget  install kalilinux.kalilinux
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
#####################################################################################################
# These apps need some manual installation
