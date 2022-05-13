$AccountName = "appstoragetestps007"
$ResourceGroupName = "powershell-rg"

$StorageAccount = Get-AzStorageAccount -Name $AccountName `
-ResourceGroupName $ResourceGroupName

$FileShareConfig = @{
    Context = $StorageAccount.Context
    Name = "data"
}

# Create File Share
# Splatting - Instead of passing parameter directly to a Commandlet, 
# you can pass a Hash object if the Key name are same as that of the properties accepted by commandlet
New-AzStorageShare @FileShareConfig

# Create Directory
$DirectoryDetails = @{
    Context = $StorageAccount.Context
    ShareName = "data"
    Path = "files"
}
New-AzStorageDirectory @DirectoryDetails

# Upload file to File Share
$FileDetails = @{
    Context = $StorageAccount.Context
    ShareName = "data"
    Source = "sample.txt"
    path = "/files/sample.txt"
}
Set-AzStorageFileContent @FileDetails