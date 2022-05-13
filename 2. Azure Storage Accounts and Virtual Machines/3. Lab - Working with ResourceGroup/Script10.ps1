$ResourceGroupName = "NetworkWatcherRG"
Remove-AzResourceGroup $ResourceGroupName -Force

$ResourceGroupName = "powershell-rg"
$Location = "East US 2"

$ResourceGroup = New-AzResourceGroup -Name $ResourceGroupName -Location $Location
$ResourceGroup.ProvisioningState

# Get Existing Resource Group
$ExistingResourceGroup = Get-AzResourceGroup -Name $ResourceGroup
$ExistingResourceGroup

# Delete all Resource Groups
$ResourceGroupList = Get-AzResourceGroup
foreach ($Group in $ResourceGroupList) {
    'Removing Resource Group '+ $Group.Name
    Remove-AzResourceGroup -Name $Group.Name -Force
}