$ResourceGroupName = "rg-az104-dev-ind"
$Location ="indiasouthcentral"

#az account list-locations --output table

az group create `
--name $ResourceGroupName `
--location $Location