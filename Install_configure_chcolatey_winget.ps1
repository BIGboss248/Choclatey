$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
'running with full privileges'
set-executionpolicy unrestricted
# Copy the items of Local choco setup to drive c
Set-Location $scriptPath
$Path = Join-Path -Path $scriptPath  -ChildPath "\Resources\choco-setup"
$nuget_path = Join-Path -path $scriptPath -ChildPath "\Resources\Microsoft.PackageManagement.NuGetProvider-2.8.5.208.dll"
Read-Host -Prompt "Press Enter to exit"
Copy-Item $Path "C:\" -recurse
mkdir "C:\Program Files\PackageManagement\ProviderAssemblies\nuget\2.8.5.208"
Copy-Item -Path $nuget_path -Destination "C:\Program Files\PackageManagement\ProviderAssemblies\nuget\2.8.5.208"
$choco_path = "C:\choco-setup\files\ChocolateyLocalInstall.ps1"
Set-Location $choco_path
Read-Host -Prompt "Press Enter to exit"
Start-Process powershell -verb runas -ArgumentList $choco_path