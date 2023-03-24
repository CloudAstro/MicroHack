# Challenge 0: Set up the Environment

**[Home](../README.md)** - [Next Challenge Solution](01-Build-and-push-locally-solution.md)

## Task 1: Setup Azure resource group

To create a resource group there are multiple options like the Azure portal or the Azure CLI. To do it with the cLI use the following code:

```
az group create `
--location westeurope `
--resource-group $RESOURCE_GROUP
```

## Task 2: Set up an Azure Container Registry with admin account

To create a Container Registry there are multiple options like the Azure portal or the Azure CLI. To do it with the CLI use the following code:

```
az acr create `
  --resource-group $RESOURCE_GROUP `
  --name $ACR_NAME `
  --sku Basic `
  --admin-enabled true
```
`--sku Basic`
you are setting the basic permission concept.

## Task 3: Clone subdirectory and push into personal repository

If you are using VS Code make sure you are connected to your gitHub account.
Then you can use the terminal or the command palette to clone the repository.


## Task 5: Create a Github action that builds and pushes the docker image to your ACR

From the Azure CLI run the following code: 
```
az ad sp create-for-rbac `
  --name "GreenCode"
  --role "contributor"
  --scopes "/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP" `
  --sdk-auth
```
For $SUBSCRIPTION_ID and $RESOURCE_GROUP use your applicable values.
Copy the returned JSON output for the next step.

To create a Service Principal you require the owner role over the azure subscription you're working in. If you don't have that you won't be able to deploy automatically via GitHub actions but the build pipeline would still work.


To be able to use Azure Credentials in GitHub Actions some secrets need to be created first. In GitHub go to your repository and select "Settings", then "Secrets" and then "Actions". Create a "New Repository Secret".
Name it for example "AZURE_CREDENTIALS" and paste the copied JSON.

To be able to build, push and pull images with GitHub actions you will also need a secret for the ACR username and password.

To get the username and password use the following command or look it up in the Azure Portal:

`az acr credentials show -n $ACR-NAME`

Now create four additional secrets, one named "REGISTRY_USERNAME", the seconded named "REGISTRY_PASSWORD" where you save the values from above command, the third REGISTRY_LOGIN_SERVER where you save the name of the Container registry in format "$ACR_NAME.azurecr.io" and the fourth named RESOURCE_GROUP which contains the name of the resource group you created earlier.

Create a new folder in you project root called ".github/workflows". Then create a .yaml file for the build and deploy GitHub Action:

```
name: demo deployment
# When this action will be executed
on:
  # Automatically trigger it when detected changes in repo
  push:
    branches: 
      [ main ]
  # Allow manual trigger 
  workflow_dispatch:
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout to the branch
        uses: actions/checkout@v2
      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v1
      - name: Log in to container registry
        uses: docker/login-action@v1
        with:
          registry: ${{ secrets.REGISTRY_LOGIN_SERVER }}
          username: ${{ secrets.REGISTRY_USERNAME }}
          password: ${{ secrets.REGISTRY_PASSWORD }}
      - name: Build and push container image to registry
        uses: azure/docker-login@v1
        with:
          login-server: ${{ secrets.REGISTRY_LOGIN_SERVER }}
          username: ${{ secrets.REGISTRY_USERNAME }}
          password: ${{ secrets.REGISTRY_PASSWORD }}
      - run: |
          cd demo-app
          docker build . -t ${{ secrets.REGISTRY_LOGIN_SERVER }}/demo-app:${{ github.sha }}
          docker push ${{ secrets.REGISTRY_LOGIN_SERVER }}/demo-app:${{ github.sha }}
  deploy:
    runs-on: ubuntu-latest
    needs: build
    
    steps:
      - name: Azure Login
        uses: azure/login@v1
        with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}
      - name: Deploy to Azure Container instance
        uses: azure/aci-deploy@v1
        with:
          resource-group: ${{ secrets.RESOURCE_GROUP }}
          dns-name-label: ${{ secrets.RESOURCE_GROUP }}${{ github.run_number }}
          image: ${{ secrets.REGISTRY_LOGIN_SERVER }}/demo-app:${{ github.sha }}
          registry-login-server: ${{ secrets.REGISTRY_LOGIN_SERVER }}
          registry-username: ${{ secrets.REGISTRY_USERNAME }}
          registry-password: ${{ secrets.REGISTRY_PASSWORD }}
          name: aci-demo-01
          location: 'westeurope'
```
Replace $ACR_NAME with the actual name of the container registry
## Task 4: Setup Azure FrontDoor
