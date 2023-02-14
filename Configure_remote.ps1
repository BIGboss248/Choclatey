#This script will add user IT makes it admin and gives it access to remote desktop and ssh based on the ssh public key provided
# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
Set-ExecutionPolicy Bypass -Scope Process -Force;
'________________Configuring SSH and remote desktop________________'
'________________running with full privileges________________'

$pub_key = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCL0dEJNT8Kp7QJkjY23kJQsH8xlPDz4vVGPDoRuNr/D2TbzsfUrURKJKtE2VKACK4WyoEGeaWeVWzbjuLu3T5t8LFS5mwcqp7+RKeE50K39O2AffgXGMtASNbdI2h0U7MKCQtbN7PTbLOhneIF9k2xuBwfQThfzAO2i7ZmuWrlwY7cE0Rqi2KX8aSxqv+Fz+ttYOym4Qeiyuk/I3UWMZIe44I1c5QGEcef3QVLk2HVR4nY/6aOgoT1Jpb+2FlMv35gl/U/Ob5tjkA1DeD8x57oC60qrljb3CI/32AW1UKgRsXTKxM1bSwr3doRVvLvl+h7gdDPjylLurllTVIzQEIP rsa-key-20230214'
# Create a new user named "IT"
New-LocalUser -Name IT -NoPassword

# Add the user to the administrators group
Add-LocalGroupMember -Group "Administrators" -Member IT

# Enable Remote Desktop for the user
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
Enable-RemoteDesktop -Force
Set-RemoteDesktopConfig -User IT -Enable
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "PortNumber" -Value 10023

# Install the OpenSSH server and client
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

# Configure the OpenSSH server to allow remote access for the IT user
New-Item -ItemType Directory -Path C:\ProgramData\ssh\administrators_authorized_keys
Set-Content C:\ProgramData\ssh\administrators_authorized_keys\IT.pub -Value $pub_key
icacls C:\ProgramData\ssh\administrators_authorized_keys\IT.pub /grant:r "NT AUTHORITY\SYSTEM:(OI)(CI)F" `
                                                                 "BUILTIN\Administrators:(OI)(CI)F" `
                                                                 "BUILTIN\Users:(RX)"
Set-Content C:\ProgramData\ssh\sshd_config -Value @"
ListenAddress 0.0.0.0:10022
AuthorizedKeysFile C:\ProgramData\ssh\administrators_authorized_keys\%u
"@ -Encoding ASCII
Restart-Service sshd