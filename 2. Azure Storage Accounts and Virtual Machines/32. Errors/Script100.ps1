$StorageAccount = New-AzStorageAccount -ResourceGroupName $ResourceGroupName `
-Name $AccountName -Location $Location -Kind `
$AccountKind -SKUName $AccountSKU -Debug

$StorageAccount

# If you are getting Error then do the following

## Divide the sciprt into multiple blocks and run it one by one
## You can also check the error in Azure Monitor --> Activity Log
## While creating a resouce assign that to a variable and check all the properties after execution