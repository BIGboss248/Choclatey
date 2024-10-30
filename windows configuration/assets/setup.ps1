$provisioning = "$($env:ProgramData)\provisioning"

New-Item $provisioning -ItemType Directory -Force | Out-Null

Get-ChildItem | ?{$_.name -ne "setup.ps1"} | %{
    Copy-Item $_.FullName "$($provisioning)\$($_.name)" -Force
}

New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce" -Name "execute_provisioning" -Value ("cmd /c powershell.exe -ExecutionPolicy Bypass -File {0}\provisioning.ps1" -f $provisioning)