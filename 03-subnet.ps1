$ResourceGroupName="rg-az104-dev-ind-001"
$VNetName="vnet-dev-ind-001"
$SubnetName="snet-dev-ind-web-001"
$SubnetAddressPrefix="10.0.0.0/24"

$VNet = Get-AzVirtualNetwork -ResourceGroupName $ResourceGroupName -Name $VNetName

Add-AzVirtualNetworkSubnetConfig -Name $SubnetName -VirtualNetwork $VNet -AddressPrefix $SubnetAddressPrefix

$VNet | Set-AzVirtualNetwork
