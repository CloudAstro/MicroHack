# Solution 1 - Deploy the lab environment

Duration: xx-xx min

### Task 1: Task 1 (from challenge)

Some explonation

![image](./../.images/02-bicep-extension.png)

Before moving to the next task, make sure you are in the project root directory.

### Task 1: Task 2 (from challenge)

Some explonation

### Task 3: Task 3 (from challenge)

Some explonation



## **Deploy a Resource Group and a Static Web App with Bicep**

You can use [the Bicep Deployment script](./../main.bicep) to setup the base components as a one-time deployment.

- Open Visual Studio Code and log in to Azure Cloud Shell at https://shell.azure.com/ and select Bash

`az login`

- Ensure Azure CLI and extensions are up to date:

`az upgrade --yes`

`az bicep upgrade`  or `az bicep install` (to install it)

- If necessary select your target subscription:

`az account set --subscription <Name or ID of subscription>`

- Update and set the `main.parameters.json`

- Update and set the main.bicep parameters.

- Run the deployment with e.g.

`$location = "WestEurope"`

`$name="<your name>"`

`az deployment sub create --location $location -f ./main.bicep --parameters name=$name --parameters @parameters-ad-join-example.json -c`