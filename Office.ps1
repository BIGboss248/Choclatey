'running with full privileges'
# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
Set-ExecutionPolicy Bypass -Scope Process -Force;
# Doc viewer and editer
choco install foxitreader -y
choco install adobereader
# Initialize and prerequisite
choco install chocolateygui -y
choco install 7zip.install -y
choco install anydesk.in -y
choco install teamviewer -y
# Backup
choco install dropbox -y
choco install googledrive -y
# Coding
choco install notepadplusplus.install -y
choco install microsoft-windows-terminal -y
choco install python -y
choco install git -y
choco install vscode.install -y
# Internet browsers 
choco install opera-gx -y
choco install firefox -y
choco install googlechrome -y
# Video player
choco install vlc -y
