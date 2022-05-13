$AccountName = "appstoragetestps007"
$ResourceGroupName = "powershell-rg"

# Create a Container
$ContainerName = "data"
$StorageAccount = Get-AzStorageAccount -Name $AccountName -ResourceGroupName $ResourceGroupName
New-AzStorageContainer -Name $ContainerName -Context $StorageAccount.Context `
-Permission Blob

$BlobObject = @{
    FileLocation = "sample.txt"
    ObjectName = "sample.txt"
}

Set-AzStorageBlobContent -Context $StorageAccount.Context -Container $ContainerName `
-File $BlobObject.FileLocation -Blob $BlobObject.ObjectName