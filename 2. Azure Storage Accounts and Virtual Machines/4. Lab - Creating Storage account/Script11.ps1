$AccountName = "appstoragetestps007"
$AccountKind = "StorageV2"
$AccountSKU = "Standard_LRS"
$ResourceGroupName = "powershell-rg"
$Location = "East US 2"

$StorageAccount = New-AzStorageAccount -ResourceGroupName $ResourceGroupName `
-Name $AccountName -Location $Location -Kind `
$AccountKind -SKUName $AccountSKU

$StorageAccount