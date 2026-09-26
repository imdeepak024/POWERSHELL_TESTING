$ResourceGroupName="rg-az104-dev-ind-001"
$Location = "indiasouthcentral"

#az account list-locations -o table

New-AzResourceGroup -Name $ResourceGroupName -Location $Location
