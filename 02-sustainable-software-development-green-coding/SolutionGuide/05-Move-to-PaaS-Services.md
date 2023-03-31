# Challenge 5: Move the application to a PaaS service

**[Home](../README.md)** - [Next Challenge Solution](./)

## Task 1: Create Container Apps for each location we have now virtual machines deployed

You can create a container app with the Azure portal or with the Azure CLI.

Before you can deploy the movie-app you need to take some additional steps since the movie-app requires a connection to the Cosmos MongoDB database. This will be handled via environment variables. These values are needed:
AZURE_COSMOS_DB_NAME
AZURE_COSMOS_DB_ENDPOINT
AZURE_COSMOS_DB_KEY

You can retrieve them from the Cosmos DB.

Next we need to create an Azure Container apps environment. The environment defines settings like the location, certificates and monitoring for the container apps that get deployed to that environment.
Repeat this step for the second location as well.

```
az containerapp env create `
--name $CONTAINERAPPS_ENVIRONMENT `
--resource-group $RESOURCE_GROUP `
--location $LOCATION
```

After the environment is create we can create a container app inside of it.
To be able to pull the container image from the ACR we need to provide the password of the registry.
```
$password=$(az acr credential show --name $ACR_NAME --query 'passwords[0].value' -o tsv)
```

For the movie-app your CLI code should look something like this:
```
az containerapp create `
  --name movieapp-frontend `
  --resource-group $RESOURCE_GROUP`
  --environment $CONTAINERAPPS_ENVIRONMENT`
  --image "$ACR_NAME.azurecr.io/movie-app:v1"`
  --registry-server "$ACR_NAME.azurecr.io"`
  --registry-username $ACR_NAME `
  --registry-password $password `
  --env-vars AZURE_COSMOS_DB_NAME= AZURE_COSMOS_DB_ENDPOINT= AZURE_COSMOS_DB_KEY=`
  --target-port 80`
  --ingress 'external' `
  --query properties.configuration.ingress.fqdn
```

After a successful deployment we can retrieve the public URL.
$url = $(az containerapp show --name api --resource-group $RESOURCE_GROUP --query 'properties.configuration.ingress.fqdn' -o tsv)

Remember this URL as we need it later.

## Task 2: Adjust Front Door service to point to new Container Apps