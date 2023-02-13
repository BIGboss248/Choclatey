$script_Path = Split-Path -Path $MyInvocation.MyCommand.Path -Parent
$Choco_Path_dir = Join-Path -Path $script_Path  -ChildPath "\Resources\choco-setup"
$nuget_path = Join-Path -path $script_Path -ChildPath "\Resources\Microsoft.PackageManagement.NuGetProvider-2.8.5.208.dll"
$choco_path = "C:\choco-setup\files\ChocolateyLocalInstall.ps1"

'running with full privileges'
# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
Set-ExecutionPolicy Bypass -Scope Process -Force;
# Copy the items of Local choco setup to drive c
Set-Location $script_Path
Copy-Item $Choco_Path_dir "C:\" -recurse
#Install Nuget Package Provider
mkdir "C:\Program Files\PackageManagement\ProviderAssemblies\nuget\2.8.5.208"
Copy-Item -Path $nuget_path -Destination "C:\Program Files\PackageManagement\ProviderAssemblies\nuget\2.8.5.208"
Unblock-File "C:\Program Files\PackageManagement\ProviderAssemblies\nuget\2.8.5.208\Microsoft.PackageManagement.NuGetProvider-2.8.5.208.dll"
#Install Chocolatey
Set-Location $choco_path
Start-Process powershell -verb runas -ArgumentList $choco_path