# chocolatey config file C:\ProgramData\chocolatey\config\chocolatey.config


# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
'________________Disalbe right click file properties menue___________'
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
'________________running with full privileges________________'
Set-ExecutionPolicy Bypass -Scope Process -Force;

choco install starship  -y
'________________Doc viewer and editer________________'
winget install -e --id Foxit.FoxitReader --accept-source-agreements
winget install --id 9WZDNCRD29V9 --accept-source-agreements #install office365
'________________Initialize and prerequisite________________'
choco install dotnet-6.0-desktopruntime -y
choco install chocolateygui -y
winget install --id 7zip.7zip --accept-source-agreements
winget install -e --id AnyDeskSoftwareGmbH.AnyDesk --accept-source-agreements
'________________virtual OS and Cloud________________'
# Install zsh and "oh my zsh" and power10k
winget install -e --id Docker.DockerDesktop --accept-source-agreements
winget install Canonical.Ubuntu.2204 --accept-source-agreements
winget  install kalilinux.kalilinux --accept-source-agreements
winget install -e --id Oracle.VirtualBox --accept-source-agreements
winget install --id Hashicorp.Terraform --accept-source-agreements
winget install --id Amazon.AWSC1LI --accept-source-agreements
'________________Coding________________'
winget install --id 9NCVDN91XZQP --accept-source-agreements #Python3.12
winget install -e --id XP9KHM4BK9FZ7Q --accept-source-agreements# VS code
winget install -e --id Git.Git --accept-source-agreements
winget install --id 9N0DX20HK701 --accept-source-agreements # Windwos terminal
'________________Internet browsers________________' 
winget install -e --id Waterfox.Waterfox --accept-source-agreements
winget install -e --id Tonec.InternetDownloadManager --accept-source-agreements
'________________Video player________________'
winget install -e --id VideoLAN.VLC --accept-source-agreements
