# Noavarn registery address     Computer\HKEY_CURRENT_USER\SOFTWARE\NJ


# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
Set-ExecutionPolicy Bypass -Scope Process -Force;
'________________________________________________running with full privileges________________________________________________'
'________________________________________________Doc viewer and editer________________________________________________'
choco install foxitreader -y
'________________________________________________Initialize and prerequisite________________________________________________'
choco install chocolateygui -y
choco install 7zip.install -y
choco install anydesk.install -y
'________________________________________________Network tools________________________________________________'
'________________________________________________Backup________________________________________________'
choco install dropbox -y
choco install googledrive -y
'________________________________________________Coding________________________________________________'
choco install notepadplusplus.install -y
choco install microsoft-windows-terminal -y
choco install python -y
choco install git -y
choco install vscode.install -y
'________________________________________________Internet browsers________________________________________________' 
choco install opera-gx -y
choco install firefox -y
choco install googlechrome -y
'________________________________________________Video player________________________________________________'
choco install vlc -y
'________________________________________________Long Instalation________________________________________________'
choco install adobereader -y
choco install teamviewer -y
'________________________________________________Install Problem________________________________________________'
choco install advanced-ip-scanner -y