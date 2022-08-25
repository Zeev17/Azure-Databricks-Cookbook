# Change the APPId, AppSecret, TenantId, SubscriptionName and ResourceGroup Name
$appId="da5ac6d9-c866-4dcc-8c6f-c0b7ea6b139c"
$appSecret="9c7276a0-3a74-4699-88b3-3bbce9c0041f"
$tenantId="80e1eae1-b082-4f96-817b-7c50599c9e6c"
$subscriptionName="Azure for Students"
$resourceGroup = "CookBookAdbRG"

az login --service-principal --username $appId --password $appSecret --tenant $TenantId

az account set --subscription $subscriptionName

az group deployment create --resource-group $resourceGroup `
--template-file azuredeploy.json --parameters azuredeploy.parameters.json
