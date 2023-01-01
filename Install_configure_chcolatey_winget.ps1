set-executionpolicy remotesigned
# Copy the items of Local choco setup to drive c
$Path = Join-Path -Path $pwd  -ChildPath ".\Choclatey\Resources\choco-setup"
Copy-Item $Path "C:\" -recurse
$choco_path = "C:\choco-setup\files\ChocolateyLocalInstall.ps1"
Install-Script $choco_path