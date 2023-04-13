@description('The Azure region into which the resources should be deployed.')
param location string = resourceGroup().location

@description('The vm size to use for the virtual machine.')
param vmSize string = 'Standard_D2_v4'

@description('The admin username for the virtual machine.')
param adminUsername string

@description('The computer name for the virtual machine.')
param computerName string

@description('The name of the ACR the container should be pulled from')
param acrName string

@description('The password for the ACR')
@secure()
param acrPassword string

@description('Name of the Cosmos DB')
param cosmosDbName string

@description('The name of the container that should be run')
param containerName string

param guidValue string = newGuid()

var adminPassword = '${uniqueString(resourceGroup().id)}-${guidValue}'

@description('The address prefixes of the network interfaces.')
var addressPrefix = '10.0.0.0/8'
@description('The address prefixes of the subnets to create.')
var subnetAddressPrefix = '10.0.0.0/16'

var cloudInit = '''
#cloud-config

users:
- default
package_update: true
package_upgrade: true

groups:
- docker

system_info:
  default_user:
    groups: [docker]

packages:
- apt-transport-https
- ca-certificates
- curl
- gnupg
- lsb-release
- unattended-upgrades
write_files:
runcmd:
- mkdir -p /etc/apt/keyrings
- curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
- echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
- apt-get update -y
- apt-get install -y docker-ce docker-ce-cli containerd.io
- systemctl enable docker
- systemctl start docker
- docker login ${acrName}.azurecr.io -u ${acrName} -p ${acrPassword}
- docker pull ${acrName}.azurecr.io/${containerName}
- docker run -d -p 80:3000 --restart=always ${acrName}.azurecr.io/${containerName} -e DATABASE_URL='${cosmosEndpoint}''
'''
resource cosmosDb 'Microsoft.DocumentDB/databaseAccounts@2022-11-15' existing = {
  name: cosmosDbName
}

var cloudInitParams = {
  acrName: acrName
  acrPassword: acrPassword
  containerName: containerName
  cosmosEndpoint: cosmosDb.listConnectionStrings().connectionStrings[0].connectionString
}

var cloudInitFormated = reduce(
  items(cloudInitParams),
  { value: cloudInit },
  (curr, next) => { value: replace(curr.value, '\${${next.key}}', next.value) }
).value

resource vnet 'Microsoft.Network/virtualNetworks@2022-07-01' = {
  name: 'vnet-${location}-${uniqueString(resourceGroup().id)}'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: 'subnet-${uniqueString(resourceGroup().id)}'
        properties: {
          addressPrefix: subnetAddressPrefix
        }
      }
    ]
  }
}

resource publicIP 'Microsoft.Network/publicIPAddresses@2022-09-01' = {
  name: '${computerName}-${uniqueString(resourceGroup().id)}-pip'
  location: location
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
  }
  sku: {
    name: 'Basic'
  }
}

resource nic 'Microsoft.Network/networkInterfaces@2022-09-01' = {
  name: '${computerName}-${uniqueString(resourceGroup().id)}-nic'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: vnet.properties.subnets[0].id
          }
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIP.id
          }
        }
      }
    ]
  }
}

resource vm 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: '${computerName}-${uniqueString(resourceGroup().id)}-vm'
  location: location
  properties: {
    hardwareProfile: {
      vmSize: vmSize
    }
    storageProfile: {
      osDisk: {
        createOption: 'FromImage'
        name: '${computerName}-${uniqueString(resourceGroup().id)}-osDisk'
        diskSizeGB: 30
      }
      imageReference: {
        publisher: 'Canonical'
        offer: '0001-com-ubuntu-server-focal'
        sku: '20_04-lts'
        version: 'latest'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: nic.id
          properties: {
            primary: true
          }
        }
      ]
    }
    osProfile: {
      computerName: computerName
      adminUsername: adminUsername
      adminPassword: adminPassword
      customData: base64(cloudInitFormated)
      linuxConfiguration: {
        patchSettings: {
          patchMode: 'AutomaticByPlatform'
        }
      }
    }
  }
}
