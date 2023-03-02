
#   Shekan 178.22.122.100    185.51.200.2
#   Radarbazi   10.202.10.10    10.202.10.11
#   Cloudflare  1.1.1.1     1.0.0.1
#   google      8.8.8.8     8.8.4.4
#   Cisco       208.67.222.222  208.67.220.220
#   Iran        5.200.200.200
#   SSRR        114.114.114.114:53  223.5.5.5:53    208.67.222.222:53

# Check for permissions 
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch as administrator
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    Exit
}
Set-ExecutionPolicy Bypass -Scope Process -Force;
'________________running with full privileges________________'
$nic = Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.IPEnabled -eq "TRUE"}
$nic.SetDNSServerSearchOrder($null)

# Define DNS Servers
$Shecan = @("178.22.122.100","185.51.200.2")
$Cloudflare = @("1.1.1.1","1.0.0.1")
$Cisco = @("208.67.222.222","208.67.220.220")
$Google = @("8.8.8.8","8.8.4.4")

# Get Network Adapters with IP Address enabled
$nic = Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.IPEnabled -eq "TRUE"}

# Enable the static IP address on the device 
$nic.EnableStatic($nic.IPAddress,$Nic.IPSubnet)

# Set the DNS Servers
$nic.SetDNSServerSearchOrder($Shecan) 
