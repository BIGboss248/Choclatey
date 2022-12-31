set-executionpolicy remotesigned
# Copy the items of Local choco setup to drive c
$Path = Join-Path -Path $pwd  -ChildPath ".\Choclatey\Resources\choco-setup"
Copy-Item $Path "C:\" -recurse
# cd "C:\choco-setup\files"