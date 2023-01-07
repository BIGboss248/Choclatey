param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}

'running with full privileges'
set-executionpolicy unrestricted
# Copy the items of Local choco setup to drive c
$Path = Join-Path -Path $pwd  -ChildPath ".\Choclatey\Resources\choco-setup"
Copy-Item $Path "C:\" -recurse
$choco_path = "C:\choco-setup\files\ChocolateyLocalInstall.ps1"
Install-Script $choco_path