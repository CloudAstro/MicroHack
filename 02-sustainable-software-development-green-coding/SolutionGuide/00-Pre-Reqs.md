# Challenge 0: Getting started and setting up the environment

**[Home](../README.md)** - [Next Challenge Solution](./01-Multi-Region-Deployment.md)

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
  --sku Standard `
  --admin-enabled true
```
`--sku Basic`
you are setting the basic permission concept.

## Task 3: Clone MicroHack repository and push into personal repository

If you are using VS Code make sure you are connected to your gitHub account.
Then you can use the terminal or the command palette to clone the repository.
To better work with the further Challenges create a new GitHub repository in your own account and copy only the 02-sustainable-software-development-green-coding folder into it. This way you can easily make changes and follow the Challenges.

## Task 4: Build the Container and push it to the container registry

To build the container image you can either build the container locally and push it to the Container registry or you can use the Container registry to do that for you. We're using the later solution, run the following command it the todo-app folder:
You need to run in the todo-app application folder:
```
az acr build `
--registry $ACR_NAME `
--image todo-app:v1 .
```
