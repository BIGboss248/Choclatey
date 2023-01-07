$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
Set-Location $scriptPath
Start-Process powershell -verb runas -ArgumentList -file Install_configure_chcolatey_winget.ps1