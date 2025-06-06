# Personal device setup

Enable winget configure

```console
winget configure --enable
```

## Install fonts

## Apply windows settings

Windows_Settings_Setup.ps1

## Install Software

Enable winget configure

```console
winget configure --enable
```

run

```console
Get-ChildItem -Path .\.configuration\ -Filter *.winget | ForEach-Object { winget configure $_.FullName }
```

## configure proxifier

to allow direct steam download if the network is going through a VPN tunnel

## Install additional software from uniget

If needed import software package from Uniget_installed_packages and install it

## Software

You can install software using the powershell scripts or use the wingetui (unigetui) to install the software

## Starship

For starship formatting to apply you need to install starship set execution policy to bypass and install  nerdfont symbols change the font of the terminal to nerdfont symbols

## Razer workshop GameDog

Software for custom chroma effects in Dota2

This one is not awailble via winget download and install manually from [GameDog chroma shop page](https://www.razer.com/chroma-workshop#--all--look--YWRyaWFuJTIwYnJldHRzY2huZWlkZXIvZ2FtZWRvZw_-__-_)
