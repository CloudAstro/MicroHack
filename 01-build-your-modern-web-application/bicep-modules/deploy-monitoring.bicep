// deploy-monitoring.bicep //
// 10.01.2023 //

targetScope = 'resourceGroup'

// ========== //
// Parameters //
// ========== //

@description('Required. The name of the Resource Group.')
param name string

@description('Required. The name of the Resource Group.')
param location string


// =========== //
// Variables //
// =========== //


// =========== //
// Deployments //
// =========== //

module deployloganalytics 'carml/0.8.0/Microsoft.OperationsManagement/solutions/deploy.bicep' ={
  name: name
  params: {
    name: name
    logAnalyticsWorkspaceName: name
    enableDefaultTelemetry: true
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
