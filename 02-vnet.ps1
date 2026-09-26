$ResourceGroupName="rg-az104-dev-ind-001"
$Location = "indiasouthcentral"
$VNetName="vnet-dev-ind-001"
$AddressSpace= "10.0.0.0/16"

New-AzVirtualNetwork -Name $VNetName -ResourceGroupName -Location $Location -AddressPrefix $AddressSpace