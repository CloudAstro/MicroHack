param firstRegion string = 'northeurope'

param secondRegion string = 'westeurope'

param acrName string
param containerName string

param vmEnabled bool = true

param containerAppEnabled bool = false

var regions = [
  firstRegion
  secondRegion
]

resource registry 'Microsoft.ContainerRegistry/registries@2022-12-01' existing = {
  name: acrName
}

//-------------------------//
// Cosmos DB
//-------------------------//

resource cosmosDbAccount 'Microsoft.DocumentDB/databaseAccounts@2022-11-15' = {
  name: '${uniqueString(resourceGroup().id)}-db'
  location: firstRegion
  kind: 'GlobalDocumentDB'
  properties: {
    consistencyPolicy: {
      defaultConsistencyLevel: 'Eventual'
      maxStalenessPrefix: 1
      maxIntervalInSeconds: 5
    }
    locations: [
      {
        failoverPriority: 0
        isZoneRedundant: false
        locationName: firstRegion
      }
      {
        failoverPriority: 1
        isZoneRedundant: false
        locationName: secondRegion
      }
    ]
    databaseAccountOfferType: 'Standard'
    enableAutomaticFailover: true
    capabilities: [
      {
        name: 'EnableMongo'
      }
    ]
    enableMultipleWriteLocations: true
  }
}

//-------------------------//
// Virtual machines
//-------------------------//

module webServer 'modules/vm.bicep' = [for (location, i) in regions: if (vmEnabled) {
  name: 'virtualMachine-${i}'
  params: {
    location: location
    adminUsername: 'azureuser'
    computerName: location
    acrName: acrName
    acrPassword: registry.listCredentials().passwords[0].value
    containerName: containerName
    cosmosDbName: cosmosDbAccount.name
  }
}]

//-------------------------//
// Container Apps
//-------------------------//

resource containerAppEnvironment 'Microsoft.App/managedEnvironments@2022-10-01' = [for (location, i) in regions: if (containerAppEnabled) {
  name: '${uniqueString(resourceGroup().id)}-containerAppEnv-${i}'
  location: location
  properties: {
  }
}]

resource containerApp 'Microsoft.App/containerApps@2022-10-01' = [for (location, i) in regions: if (containerAppEnabled) {
  name: '${uniqueString(resourceGroup().id)}-containerApp-${i}'
  location: location
  properties: {
    managedEnvironmentId: containerAppEnvironment[i].id
    configuration: {
      secrets: [
        {
          name: 'containerregistrypasswordref'
          value: registry.listCredentials().passwords[0].value
        }
        {
          name: 'cosmosDbUrl'
          value: cosmosDbAccount.listConnectionStrings().connectionStrings[0].connectionString
        }
      ]
      ingress: {
        external: true
        targetPort: 80
      }
      registries: [
        {
          server: '${acrName}.azurecr.io'
          username: acrName
          passwordSecretRef: 'containerregistrypasswordref'
        }
      ]
    }
    template: {
      containers: [
        {
          image: '${acrName}.azurecr.io/${containerName}'
          name: 'todo-app'
          resources: {
            cpu: '1.0'
            memory: '4.0Gi'
          }
          env: [
            {
              name: 'DATABASE_URL'
              secretRef: 'cosmosDbUrl'
            }
          ]
        }
      ]
      scale: {
        minReplicas: 1
        maxReplicas: 1
      }
    }
  }
}]
