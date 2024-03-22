"________________Personal tools________________"
winget install --id Obsidian.Obsidian --accept-source-agreements
# Winget package manager
winget install --id SomePythonThings.WingetUIStore --accept-source-agreements
winget install --id ZeroTier.ZeroTierOne --accept-source-agreements


'________________Doc viewer and editer________________'
winget install -e --id Foxit.FoxitReader --accept-source-agreements
winget install --id 9WZDNCRD29V9 --accept-source-agreements #install office365


'________________Initialize and prerequisite________________'
winget install --id Microsoft.DotNet.SDK.7 --accept-source-agreements
winget install --id Microsoft.DotNet.Runtime.7 --accept-source-agreements
winget install --id Starship.Starship --accept-source-agreements
Copy-Item "C:\Users\aminj\OneDrive\My Software\Choclatey\starship.toml" "C:\Users\aminj\.config"
winget install --id 7zip.7zip --accept-source-agreements
winget install -e --id AnyDeskSoftwareGmbH.AnyDesk --accept-source-agreements


'________________virtual OS and Cloud________________'
# Install zsh and "oh my zsh" and power10k
winget install -e --id Docker.DockerDesktop --accept-source-agreements
winget install -e --id OpenJS.NodeJS --accept-source-agreements
# Install precommit a tool used to lint a code before commiting it to github repository
conda install -c conda-forge pre-commit
winget install Canonical.Ubuntu.2204 --accept-source-agreements
winget  install kalilinux.kalilinux --accept-source-agreements
winget install -e --id Oracle.VirtualBox --accept-source-agreements
winget install --id Hashicorp.Terraform --accept-source-agreements
winget install --id Amazon.AWSCLI --accept-source-agreements

'________________Coding________________'
winget install --id 9NCVDN91XZQP --accept-source-agreements #Python3.12
winget install -e --id XP9KHM4BK9FZ7Q --accept-source-agreements # VS code
winget install -e --id Git.Git --accept-source-agreements
winget install --id 9N0DX20HK701 --accept-source-agreements # Windwos terminal
'________________Internet browsers________________'
winget install -e --id Tonec.InternetDownloadManager --accept-source-agreements
winget install --id OpenVPNTechnologies.OpenVPNConnect --accept-source-agreements
winget install --id Famatech.AdvancedIPScanner --accept-source-agreements
'________________Video player________________'
winget install -e --id VideoLAN.VLC --accept-source-agreements
'________________Game________________'
winget install -e --id RazerInc.RazerInstaller --accept-source-agreements
winget install --id Valve.Steam --accept-source-agreements
