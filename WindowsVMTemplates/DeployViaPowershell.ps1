#Connect to AZ account
Connect-AzAccount

#Check Subscriptions
$subscription = Get-AzSubscription

#SELECT subscriptions 
$setSubscription = Select-AzSubscription -Tenant $subscription.TenantId.GetValue(1)
$setSubscription

New-AzResourceGroupDeployment -Name VMtepmlate -ResourceGroupName TempResources `
-TemplateFile ..\GitAZTemplate\WindowsVMTemplates\FirstVMTemplate.json -verbose

