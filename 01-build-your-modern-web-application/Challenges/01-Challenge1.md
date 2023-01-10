# **Deploy the lab environment**

You can use [the Bicep Deployment script](./../main.bicep) to setup the base components as a one-time deployment.

- Open Visual Studio Code and log in to Azure Cloud Shell at https://shell.azure.com/ and select Bash

`az login`

- Ensure Azure CLI and extensions are up to date:

`az upgrade --yes`

`az biceps upgrade`  or `az biceps install` (to install it)

- If necessary select your target subscription:

`az account set --subscription <Name or ID of subscription>`

- Update and set the `parameters-aa-join-example.json`

- Update and set the main.bicep parameters.

- Run the deployment with e.g.

`$location = "WestEurope"`

`$name="<your name>"`

`az deployment sub create --location $location -f ./main.bicep --parameters name=$name --parameters @parameters-ad-join-example.json -c`