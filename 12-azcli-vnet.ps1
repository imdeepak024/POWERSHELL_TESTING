$ResourceGroupName="rg-az104-dev-ind"
$Location="indiasouthcentral"
$VNetName="vnet-dev-ind-01"
$AddressSpace="10.0.0.0/16"
$SubnetName="snet-dev-ind-web-01"
$SubnetName2="snet-dev-ind-db-01"
$SubnetAddressPrefix1="10.0.0.0/24"
$SubnetAddressPrefix2="10.0.1.0/24"

# 1. Create the VNet and the first subnet
az network vnet create `
--resource-group $ResourceGroupName `
--location $Location `
--name $VNetName `
--address-prefixes $AddressSpace `
--subnet-name $SubnetName `
--subnet-prefixes $SubnetAddressPrefix1 `

# 2. Create the second subnet separately


az network vnet subnet create `
--resource-group $ResourceGroupName `
--vnet-name $VNetName `
--name $SubnetName2 `
--address-prefix $SubnetAddressPrefix2
