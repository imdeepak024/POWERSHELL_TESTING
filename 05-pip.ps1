$ResourceGroupName="rg-az104-dev-ind-001"
$Location = "indiasouthcentral"
$PublicIPName="pip-web-dev-ind-001"
$NicName= "nic-web-dev-eus-01"
$IpConfigName= "ipconfig-web-01"

$Pip = New-AzPublicIpAddress -Name $PublicIpName `
-ResourceGroupName $ResourceGroupName `
-Location $Location `
-Sku Standard `
-AllocationMethod Static

$Nic=Get-AzVirtualNetworkInterface -Name $NicName -ResourceGroupName $ResourceGroupName

Set-AzNetworkInterfaceIpConfig -Name $IpConfigName `
-NetworkInterface $Nic `
-PublicIPAddress $Pip | Out-Null

Set-AzNetworkInterface -NetworkInterface $Nic