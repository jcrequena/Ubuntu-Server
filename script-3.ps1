Import-Module ServerManager
Add-WindowsFeature AD-Domain-Services
Import-Module ADDSDeployment #Se carga el módulo

Install-ADDSDomainController ` 
-DomainName "smr.local" `
–Credential (Get-Credential) `
–SiteName “Default-First-Site-Name” `
–InstallDNS:$True `
–NoGlobalCatalog:$false `
-CreateDNSDelegation:$false `
-ReplicationSourceDC "serv-1.smr.local" `
–CriticalReplicationOnly:$False –DatabasePath “C:\Windows\NTDS” `
–LogPath “C:\Windows\NTDS” `
–SysVolPath “C:\Windows\SysVol” `
–NoRebootOnCompletion:$False `
-Force:$true
