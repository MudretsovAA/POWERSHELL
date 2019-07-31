Set-ExecutionPolicy -ExecutionPolicy RemoteSigned  
#Enabling SQL Server Ports
New-NetFirewallRule -DisplayName “MS SQL Server” -Direction Inbound –Protocol TCP –LocalPort 1433 -Action allow
New-NetFirewallRule -DisplayName “MS SQL Admin Connection” -Direction Inbound –Protocol TCP –LocalPort 1434 -Action allow
New-NetFirewallRule -DisplayName “MS SQL Database Management” -Direction Inbound –Protocol UDP –LocalPort 1434 -Action allow
New-NetFirewallRule -DisplayName “MS SQL Service Broker” -Direction Inbound –Protocol TCP –LocalPort 4022 -Action allow
New-NetFirewallRule -DisplayName “MS SQL Debugger/RPC” -Direction Inbound –Protocol TCP –LocalPort 135 -Action allow
#Enabling SQL Analysis Ports
New-NetFirewallRule -DisplayName “MS SQL Analysis Services” -Direction Inbound –Protocol TCP –LocalPort 2383 -Action allow
New-NetFirewallRule -DisplayName “MS SQL Analysis Services Tabl” -Direction Inbound –Protocol TCP –LocalPort 2393 -Action allow
New-NetFirewallRule -DisplayName “MS SQL Browser” -Direction Inbound –Protocol TCP –LocalPort 2382 -Action allow
#Enabling Misc. Applications
New-NetFirewallRule -DisplayName “MS HTTP” -Direction Inbound –Protocol TCP –LocalPort 80 -Action allow
New-NetFirewallRule -DisplayName “MS SSL” -Direction Inbound –Protocol TCP –LocalPort 443 -Action allow
New-NetFirewallRule -DisplayName “MS SQL Server Browse Button Service” -Direction Inbound –Protocol UDP –LocalPort 1433 -Action allow
#Enable Windows Firewall
##Set-NetFirewallProfile -DefaultInboundAction Block -DefaultOutboundAction Allow -NotifyOnListen True -AllowUnicastResponseToMulticast True

# "MS RS" TCP 80, 443
# "MS SQL TCP" TCP 1433
# "MS SSAS TCP" 2382-2383, 2393