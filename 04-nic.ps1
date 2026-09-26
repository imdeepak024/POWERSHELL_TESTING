$ResourceGroupName="rg-az104-dev-ind-001"
$Location = "indiasouthcentral"
$SubnetName="snet-dev-ind-web-001"
$NicName= "nic-web-dev-ind-001"
$VNetName="vnet-dev-ind-001"

$VNet = Get-AzVirtualNetwork -ResourceGroupName $ResourceGroupName -Name $VNetName

$Subnet = Get-AzVirtualNetworkSubnetConfig -Name $SubnetName -VirtualNetwork $VNet

New-AzNetworkInterface -Name  $NicName `
-ResourceGroupName $ResourceGroupName `
-Location $Location `
- Subnet  $Subnet `
-IpConfigurationName "ipconfig-web-001"