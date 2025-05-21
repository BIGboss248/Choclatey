# Enable full context menus in Windows
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
Write-Host "Full context menus have been enabled."
# Disable Windows Search bar web search
reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f
# Show file extensions in Windows Explorer
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f
# Show hidden files in Windows Explorer
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f
# Apps dark theme
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
# Windows dark theme
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
# Disable task bar search box
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f
# PSReadLine
Install-Module -Name PSReadLine
# Set execution policy to bypass to allow starship to run
Set-ExecutionPolicy Bypass
# Open windows restore point settings
SystemPropertiesProtection
# Program files on D:
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion
