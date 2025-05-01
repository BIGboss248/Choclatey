Write-Host "===================================Installing PSReadLine===================================" -ForegroundColor Green
powershell.exe Install-Module -Name PSReadLine -Confirm:$false -Force
Write-Host "===================================Installing wireguard===================================" -ForegroundColor Green
winget install --id WireGuard.WireGuard --location "D:\\winget-apps\\WireGuard" --source winget
Write-Host "===================================Installing wiresock===================================" -ForegroundColor Green
winget install --id NTKERNEL.WireSockVPNClient --location "D:\\winget-apps\\WireSock" --source winget
Write-Host "===================================Installing video===================================" -ForegroundColor Green
winget install --id VideoLAN.VLC --location "D:\\winget-apps\\VLC" --source winget
Write-Host "===================================Installing Python===================================" -ForegroundColor Green
winget install --id Python.Python.3.12 --location "D:\\winget-apps\\Python" --source winget
Write-Host "===================================Installing Golang===================================" -ForegroundColor Green
winget install --id GoLang.Go --location "D:\\winget-apps\\GoLang" --source winget
Write-Host "===================================Installing Chrome===================================" -ForegroundColor Green
winget install --id Google.Chrome --location "D:\\winget-apps\\Chrome" --source winget
Write-Host "===================================Installing 7zip===================================" -ForegroundColor Green
winget install --id 7zip.7zip --location "D:\\winget-apps\\7zip" --source winget
Write-Host "===================================Installing anydesk===================================" -ForegroundColor Green
winget install --id AnyDesk.AnyDesk --location "D:\\winget-apps\\AnyDesk" --source winget
Write-Host "===================================Installing FDM===================================" -ForegroundColor Green
winget install --id SoftDeluxe.FreeDownloadManager --location "D:\\winget-apps\\FreeDownloadManager" --source winget
Write-Host "===================================Installing Git===================================" -ForegroundColor Green
winget install --id Git.Git --location "D:\\winget-apps\\Git" --source winget
Write-Host "===================================Installing VScode===================================" -ForegroundColor Green
winget install --id Microsoft.VisualStudioCode --location "D:\\winget-apps\\VisualStudioCode" --source winget
Write-Host "===================================Installing nodeJS===================================" -ForegroundColor Green
winget install --id OpenJS.NodeJS --location "D:\\winget-apps\\NodeJS" --source winget
Write-Host "===================================Installing Starship===================================" -ForegroundColor Green
winget install --id Starship.Starship --location "D:\\winget-apps\\Starship" --source winget
Write-Host "===================================Installing UniGetUI===================================" -ForegroundColor Green
winget install --id MartiCliment.UniGetUI --location "D:\\winget-apps\\UniGetUI" --source winget
Write-Host "===================================Installing Cloudflare-Warp===================================" -ForegroundColor Green
winget install --id Cloudflare.Warp --location "D:\\winget-apps\\Cloudflare-Warp" --source winget
Write-Host "===================================Installing Files===================================" -ForegroundColor Green
winget install --id FilesCommunity.Files --location "D:\\winget-apps\\Files" --source winget
Write-Host "===================================Installing CMake===================================" -ForegroundColor Green
winget install --id Kitware.CMake --location "D:\\winget-apps\\CMake" --source winget
Write-Host "===================================Installing Karing===================================" -ForegroundColor Green
winget install --id KaringX.Karing --location "D:\\winget-apps\\Karing" --source winget
Write-Host "===================================Installing Firefox===================================" -ForegroundColor Green
winget install --id Mozilla.Firefox  --location "D:\\winget-apps\\Firefox" --source winget
Write-Host "===================================Installing Proxifier===================================" -ForegroundColor Green
winget install --id Initex.Proxifier  --location "D:\\winget-apps\\Proxifier" --source winget
Write-Host "===================================Installing RazerSynapse===================================" -ForegroundColor Green
winget install --id RazerInc.RazerInstaller.Synapse4  --location "D:\\winget-apps\\RazerSynapse" --source winget
Write-Host "===================================Installing RemoteManager===================================" -ForegroundColor Green
winget install --id Devolutions.RemoteDesktopManager  --location "D:\\winget-apps\\RemoteManager" --source winget
Write-Host "===================================Installing SteelSeriesGG===================================" -ForegroundColor Green
winget install --id SteelSeries.GG  --location "D:\\winget-apps\\SteelSeriesGG" --source winget
