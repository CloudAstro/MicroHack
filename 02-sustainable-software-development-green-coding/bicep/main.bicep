param firstRegion string = 'northeurope'

param secondRegion string = 'westeurope'

param acrName string
param containerName string

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

resource mongoDatabase 'Microsoft.DocumentDB/databaseAccounts/mongodbDatabases@2022-11-15' = {
  parent: cosmosDbAccount
  name: 'movieDb'
  properties: {
    resource: {
      id: 'movieDb'
    }
  }
}

//-------------------------//
// Virtual machines
//-------------------------//

module webServer 'modules/vm.bicep' = [for (location, i) in regions: {
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

