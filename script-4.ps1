Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$False `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "5" `
-DomainName "logo-Malware.com" `
-DomainNetbiosName "LOGO-MALWARE" `
-SafeModeAdministratorPassword (ConvertTo-SecureString -string "Eeucqtc,10" -AsPlainText -Force)
-ForestMode "5" `
-InstallDns:$True `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$False `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true 
