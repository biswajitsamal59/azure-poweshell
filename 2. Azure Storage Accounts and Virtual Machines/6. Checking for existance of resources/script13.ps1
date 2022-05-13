$AccountName = "appstoragetestps007"
$AccountKind = "StorageV2"
$AccountSKU = "Standard_LRS"
$ResourceGroupName = "powershell-rg"
$Location = "East US 2"

if(Get-AzStorageAccount -Name $AccountName -ResourceGroupName $ResourceGroupName -ErrorAction SilentlyContinue){
    "Storage account already exists"
    $StorageAccount = Get-AzStorageAccount -Name $AccountName -ResourceGroupName $ResourceGroupName
} else {
    "Creating the storage account ..."
    $StorageAccount = New-AzStorageAccount -ResourceGroupName $ResourceGroupName `
-Name $AccountName -Location $Location -Kind `
$AccountKind -SKUName $AccountSKU
}


$ContainerName = "data"
$StorageAccount = Get-AzStorageAccount -Name $AccountName -ResourceGroupName $ResourceGroupName

if(Get-AzStorageContainer -Name $ContainerName -Context $StorageAccount.Context -ErrorAction SilentlyContinue){
    "Container already exists"
} else {
    "Creating Container ..."
    New-AzStorageContainer -Name $ContainerName -Context $StorageAccount.Context `
    -Permission Blob
}


$BlobObject = @{
    FileLocation = "sample.txt"
    ObjectName = "sample.txt"
}

if(Get-AzStorageBlob -Context $StorageAccount.Context -Container $ContainerName -Blob $BlobObject.ObjectName -ErrorAction SilentlyContinue){
    "Blob already exists"
} else {
    "Creating the Blob ..."
    Set-AzStorageBlobContent -Context $StorageAccount.Context -Container $ContainerName `
    -File $BlobObject.FileLocation -Blob $BlobObject.ObjectName
}

