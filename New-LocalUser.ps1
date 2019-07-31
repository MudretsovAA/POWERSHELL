$Password = Read-Host -AsSecureString

New-LocalUser "user1" -Password $Password -FullName "user1 full name" -Description "test account"

New-LocalGroup -Name "SecurityGroup"

Add-LocalGroupMember -Group "SecurityGroup" -Member "user1"

Add-LocalGroupMember -Group "Администраторы" -Member "SecurityGroup"


Get-LocalGroup -Name "Администраторы"

Get-LocalGroupMember -Group "Администраторы"

Get-LocalUser -Name "user1"