Set-ExecutionPolicy -ExecutionPolicy AllSigned -Scope Process

$ServerAddress = "vpn.sumnercountytn.gov"
$ConnectionName = "Sumner Co VPN"
$PresharedKey = "Sumn3rC0unty1!"
Add-VpnConnection -Name "$ConnectionName" -ServerAddress "$ServerAddress" -TunnelType L2tp -AllUserConnection -L2tpPsk "$PresharedKey" -AuthenticationMethod Pap -Force