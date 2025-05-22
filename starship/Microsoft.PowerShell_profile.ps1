$ENV:STARSHIP_CONFIG = "$env:OneDrive\My Software\Choclatey-Starship-Fonts\starship\starship.toml"
Invoke-Expression (&starship init powershell) # DevSkim: ignore DS104456
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
