// deploy-resourcegroup.bicep //
// 08.12.2022 //

targetScope = 'resourceGroup'

// ========== //
// Parameters //
// ========== //

@description('Required. The name of the Resource Group.')
param name string

@description('Required. The name of the Resource Group.')
param location string

param sku string = 'F1' 

param kindappservice string

param serverOS string

// =========== //
// Variables //
// =========== //

var appserviceplanname = 'appsp-${name}'
var appservicename = 'apps-${name}'

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

module deploystaticwebapp 'carml/0.8.0/Microsoft.Web/staticSites/deploy.bicep' = {
  name: appservicename
  params: {
    name: appservicename
    location: location
  }
}


