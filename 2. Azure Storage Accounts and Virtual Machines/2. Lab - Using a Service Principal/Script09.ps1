$AppId = ""
$AppSecret = ""
$TennatId = ""

$SecureSecret = $AppSecret | ConvertTo-SecureString -AsPlainText -Force

$Credential = New-Object -TypeName System.Management.Automation.PSCredentail `
-ArgumentList $AppId, $SecureSecret

# Connect via Service Principal
Connect-AzAccount -ServicePrincipal -Credential $Credential `
-Tenant $TennatId