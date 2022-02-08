$file = 'C:\Users\7hub\hostname.txt'

if (Test-Path -Path $file) {
    Exit
    }
 else {
     Get-Date | Out-File -FilePath C:\Users\7hub\Desktop\network.txt
(Get-CimInstance -ClassName Win32_ComputerSystem).Name | Out-File -Append -FilePath C:\Users\7hub\Desktop\network.txt
Get-WmiObject Win32_NetworkAdapterConfiguration | Select Description, MACAddress, IPAddress, DefaultIPGateway, DNSServerSearchOrder | Out-File -Append -FilePath C:\Users\7hub\Desktop\network.txt
Write-Output "___________________________________________________________" | Out-File -Append -FilePath C:\Users\7hub\Desktop\network.txt
(Get-CimInstance -ClassName Win32_ComputerSystem).Name | Out-File -Append -FilePath $file
} 
