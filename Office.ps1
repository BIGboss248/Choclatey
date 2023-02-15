# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
Set-ExecutionPolicy Bypass -Scope Process -Force;
'________________running with full privileges________________'
choco source add -n IT -s 'http://btp-it:8081/repository/choco-group/' --priority = 2
'________________Doc viewer and editer________________'
choco install foxitreader -y
choco install adobereader -y
'________________Initialize and prerequisite________________'
choco install chocolateygui -y
choco install 7zip.install -y
choco install anydesk.in -y
choco install teamviewer -y
'________________Network tools________________'
choco install advanced-ip-scanner -y
'________________Backup________________'
choco install dropbox -y
choco install googledrive -y
'________________Coding________________'
choco install notepadplusplus.install -y
choco install microsoft-windows-terminal -y
choco install python -y
choco install git -y
choco install vscode.install -y
'________________Internet browsers________________' 
choco install opera-gx -y
choco install firefox -y
choco install googlechrome -y
'________________Video player________________'
choco install vlc -y
