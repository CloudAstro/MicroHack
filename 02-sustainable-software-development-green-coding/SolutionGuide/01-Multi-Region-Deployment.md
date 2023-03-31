# Challenge 1: Multi-regional deployment for fast region switches

**[Home](../README.md)** - [Next Challenge Solution](./02-Deploy-Low-Carbon-Region.md)

## Task 1: Create an automated deployment for the virtual machines

For this example we're using Azure Bicep to take of the deployment of of the virtual machines. You can find the full code example in the bicep folder.

Virtual machines can be bootstrapped in many ways. In our case we decided to use cloud-config. Cloud config enabled to to fully customize the virtual machine at deployment time.

Below you find a cloud-config that is setting up Docker and pulls the container from the ACR. Be aware of the placeholders that need to filled
```
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
- docker run -d -p 80:3000 --restart=always ${acrName}.azurecr.io/${containerName} -e AZURE_COSMOS_DB_NAME='movieDb' -e AZURE_COSMOS_DB_ENDPOINT='${cosmosEndpoint}' -e AZURE_COSMOS_DB_KEY='${cosmosKey}'
```

## Task 2: Creating a Cosmos DB and database

To create a Cosmos DB there are multiple options like the Azure portal or the Azure CLI. To do it with the CLI use the following code:

```
az cosmosdb create `
  --resource-group $RESOURCE_GROUP `
  --name $COSMOSDB_NAME `
  --kind MongoDB `
  --locations regionName=westeurope failoverPriority=0 `
  --locations regionName=northeurope failoverPriority=1 `
  --enable-multiple-write-locations
```
After the Cosmos DB is created we need to create a dedicated MongoDB database

az cosmosdb mongodb database create `
  --account-name $COSMOSDB_NAME
  --name MovieDb

The creation of these resources is also part of the bicep deployment

## Task 3: Create a Github action that deploys the environment to Azure

We begin by creating an Azure Service Principal which will be used by the GitHub action to authenticate against the Azure Management API.

From the Azure CLI run the following code:
```
az ad sp create-for-rbac `
  --name "MicroHack" `
  --role "contributor" `
  --scopes "/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP" `
  --sdk-auth
```
For $SUBSCRIPTION_ID and $RESOURCE_GROUP use your applicable values.
Copy the returned JSON output for the next step.

To create a Service Principal you require the owner role over the azure subscription you're working in. If you don't have that you won't be able to deploy automatically via GitHub actions but the build pipeline would still work.

To be able to use Azure Credentials in GitHub Actions some secrets need to be created first. In GitHub go to your repository and select "Settings", then "Secrets and variables" and then "Actions". Create a "New Repository Secret".
Name it for example "AZURE_CREDENTIALS" and paste the copied JSON.

Create a new folder in you project root called ".github/workflows". Then create a .yaml file for the GitHub Action:

```
name: Deploy to Azure

on:
  push:
    branches:
      - main

env:
  RESOURCE_GROUP: microhack-demo-rg
  ACR_NAME: acr12300
  CONTAINER_NAME: movie-app:v1
  FIRST_REGION: northeurope
  SECOND_REGION: westeurope

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout repository
      uses: actions/checkout@2541b1294d2704b0964813337f33b291d3f8596b

    - name: Login to Azure
      uses: azure/login@v1
      with:
        creds: ${{ secrets.AZURE_CREDENTIALS }}

    - name: Deploy Bicep template
      uses: azure/arm-deploy@v1
      id: deployment
      with:
        resourceGroupName: ${{ env.RESOURCE_GROUP }}
        template: ./bicep/main.bicep
        # Here we pass the template parameters to the deployment
        parameters: >
          firstRegion=${{ env.FIRST_REGION }} secondRegion=${{ env.SECOND_REGION }} acrName=${{ env.ACR_NAME }} containerName=${{ env.CONTAINER_NAME }}
```

## Task 5: Setup Azure FrontDoor
