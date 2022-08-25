# Change the APPId, AppSecret, TenantId, SubscriptionName and ResourceGroup Name
$appId=
$appSecret=
$tenantId=
$subscriptionName="Azure for Students"
$resourceGroup = "CookBookAdbRG"

az login --service-principal --username $appId --password $appSecret --tenant $TenantId

az account set --subscription $subscriptionName

az group deployment create --resource-group $resourceGroup `
--template-file azuredeploy.json --parameters azuredeploy.parameters.json
