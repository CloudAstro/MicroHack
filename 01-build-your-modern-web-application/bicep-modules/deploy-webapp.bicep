// deploy-webapp.bicep //
// 10.01.2023 //

targetScope = 'resourceGroup'

// ========== //
// Parameters //
// ========== //

@description('Required. The name of the Resource Group.')
param name string

@description('Required. The name of the Resource Group.')
param location string

param sku string //= 'S1' 

param serverOS string

param appInsightId string

param linuxFxVersion string = 'NODE|18-lts'

param numberOfWorkers int = 1


// =========== //
// Variables //
// =========== //

var appserviceplanname = 'appsp-${name}'
var webappname = 'swa-${name}'

// =========== //
// Deployments //
// =========== //


module deployappserviceplan 'carml/0.8.0/Microsoft.Web/serverfarms/deploy.bicep' = {
  name: appserviceplanname
  params: {
    name: appserviceplanname
    sku: {
      name: sku
    }
    location: location
    serverOS: serverOS
  }
}

module deploywebapp 'carml/0.8.0/Microsoft.Web/sites/deploy.bicep' = {
  name: webappname
  params: {
    name: webappname
    kind: 'app'
    location: location
    serverFarmResourceId: deployappserviceplan.outputs.resourceId
    clientAffinityEnabled: false
    keyVaultAccessIdentityResourceId: 'SystemAssigned'
    appInsightId: appInsightId
    siteConfig: {
      acrUseManagedIdentityCreds: false
      alwaysOn: false
      linuxFxVersion: linuxFxVersion
      numberOfWorkers: numberOfWorkers
    }
  }
}

// =========== //
// Outputs //
// =========== //

@description('The name of the resource group.')
output appserviceplanname string = deployappserviceplan.name

@description('The resource ID of the resource group.')
output appserviceplanresourceId string = deployappserviceplan.outputs.resourceId

@description('The location the resource was deployed into.')
output appserviceplanlocation string = deployappserviceplan.outputs.location

@description('The name of the resource group.')
output webappname string = deploywebapp.name

@description('The resource ID of the resource group.')
output webappresourceId string = deploywebapp.outputs.resourceId

@description('The location the resource was deployed into.')
output webapplocation string = deploywebapp.outputs.location
