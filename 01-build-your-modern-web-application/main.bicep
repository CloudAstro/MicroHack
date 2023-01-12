// main.bicep //
// 07.12.2022 //

targetScope = 'subscription'

// ===================== //
// Parameter declaration //
// ===================== //

@minLength(2)
@maxLength(4)
@description('Required. The deployment name prefix.')
param deploymentPrefix string //= ''

@description('Required. The name of the Resource Group.')
param rgname string //= ''

@description('Required. The name of the App Service.')
param appsname string //= ''

@description('Optional. Location of the Resource Group. It uses the deployment\'s location when not provided.')
param location string //= deployment().location

@allowed([
  ''
  'CanNotDelete'
  'ReadOnly'
])
@description('Optional. Specify the type of lock.')
param lock string //= ''

@description('Optional. Array of role assignment objects that contain the \'roleDefinitionIdOrName\' and \'principalId\' to define RBAC role assignments on this resource. In the roleDefinitionIdOrName attribute, you can provide either the display name of the role definition, or its fully qualified ID in the following format: \'/providers/Microsoft.Authorization/roleDefinitions/c2f4ef07-c644-48eb-af81-4b1b4947fb11\'.')
param roleAssignments array //= []

@description('Optional. Tags of the storage account resource.')
param tags object = {
   workloadname: '${deploymentPrefix}-test-deployment'
}

@description('Optional. Enable telemetry via the Customer Usage Attribution ID (GUID).')
param enableDefaultTelemetry bool

param repositoryUrl string = 'https://github.com/CloudAstro/MicroHack'

param repositoryToken string = '' // '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'

param sku string = 'S1'

param appserverOS string = 'Linux'

param webappname string = 'webapp-microhack-rolandmeier'

param apinname string = 'apin-microhack-rolandmeier'

param lawname string = 'law-microhack-rolandmeier'

param serverOS string = 'Linux'

// ==================== //
// Variable declaration //
// ==================== //

var appservicename = '${deploymentPrefix}-${appsname}'

// =========== //
// Deployments //
// =========== //

module deployresourcegroup './bicep-modules/deploy-resourcegroup.bicep' = {
  name: rgname
  params: {
    name: rgname
    enableDefaultTelemetry: enableDefaultTelemetry
    location: location
    lock: lock
    roleAssignments: roleAssignments
    tags: tags
  }
}

module deploystaticwebapp './bicep-modules/deploy-staticwebapp.bicep' = {
  scope: resourceGroup(deployresourcegroup.name)
  name: appservicename
  params: {
    location: location
    name: appservicename
    sku: sku
    serverOS: appserverOS
    repositoryUrl: repositoryUrl
    repositoryToken: repositoryToken
  }
}

// module deploymonitoring './bicep-modules/deploy-monitoring.bicep' = {
//   name: apinname
//   scope: resourceGroup(deployresourcegroup.name)
//   params: {
//     location: location
//     apinname: apinname
//     lawname: lawname
//   }
// }

// module deploywebapp './bicep-modules/deploy-webapp.bicep' = {
//   scope: resourceGroup(deployresourcegroup.name)
//   name: webappname
//   params: {
//     name: webappname
//     location: location
//     sku: sku
//     appInsightId: deploymonitoring.outputs.applicationinsightsresourceId
//     serverOS: serverOS
//   }
// }

