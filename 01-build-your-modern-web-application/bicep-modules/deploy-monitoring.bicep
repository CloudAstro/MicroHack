// deploy-monitoring.bicep //
// 10.01.2023 //

targetScope = 'resourceGroup'

// ========== //
// Parameters //
// ========== //

@description('Required. The name of the Resource Group.')
param lawname string

@description('Required. The name of the Resource Group.')
param apinname string

@description('Required. The name of the Resource Group.')
param location string


// =========== //
// Variables //
// =========== //


// =========== //
// Deployments //
// =========== //

module deployloganalytics 'carml/0.8.0/Microsoft.OperationsManagement/solutions/deploy.bicep' ={
  name: lawname
  params: {
    name: lawname
    logAnalyticsWorkspaceName: lawname
    enableDefaultTelemetry: true
    location: location
  }
}

module deployapplicationinsights 'carml/0.8.0/Microsoft.OperationalInsights/workspaces/deploy.bicep' = {
  name: apinname
  params: {
    name: apinname
    location: location
  }
}
// =========== //
// Outputs //
// =========== //

@description('The name of the resource group.')
output loganalyticsname string = deployloganalytics.name

@description('The resource ID of the resource group.')
output loganalyticsresourceId string = deployloganalytics.outputs.resourceId

@description('The location the resource was deployed into.')
output loganalyticslocation string = deployloganalytics.outputs.location


@description('The name of the resource group.')
output applicationinsightsname string = deployapplicationinsights.name

@description('The resource ID of the resource group.')
output applicationinsightsresourceId string = deployapplicationinsights.outputs.resourceId

@description('The location the resource was deployed into.')
output applicationinsightslocation string = deployapplicationinsights.outputs.location
