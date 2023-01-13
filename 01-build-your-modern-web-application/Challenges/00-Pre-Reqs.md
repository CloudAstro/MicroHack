
# **Getting started**

[Home](./../README.md) - [Challenge One](./01-Deploy-the-lab-environment.md)

## **Introduction**

Azure App Services is a service that gives developers flexibility in hosting a modern web application. This topic will give you a high level view of three deployment options for a React app.

This introduction is to ensure that all the pre-requisites and/or concepts to start the planning and deployment for building a modern web application are in place.


## **High Level View**

![image](./../.images/high-level-view.png)

The deployment of base infrastructure components like a Resource Group or the App Service is a one time deployment. In contrast the CI/CD deployment of a React web app is updating the web app on every commit to the repository.

In this hack we use GitHub actions that:

1. Check out the code from the Git repository

2. Deploy a Resource Group and a Static Web App with Bicep

3. Deploy the React Web App to the Static Web App

4. Deploy the React Web App to an App Service

5. Create Docker image with React Web App, NGINX and docker compose

6. Push code in Docker Hub

7. Deploy the React Web App as containerized installation to Azure

8. Look at monitoring festures in Azure for the publishing examples

To achive these stepts a couple of requirements need to be fulfilled:

- [Task 1: Install git on Windows](#task-1-install-git-on-windows)
- [Task 2: Install Node on Windows](#task-2-install-node-on-windows)
- [Task 3: Install VSCode](#task-3-install-vscode)
- [Task 4: Install Azure Cli](#task-4-install-azure-cli)
- [Task 5: Install the Bicep extension and the Bicep PowerShell module](#task-5-install-the-bicep-extension-and-the-bicep-powershell-module)

## Task 1: Install Git on Windows

We need to download and install the Windows Git Client.

  [Git Download Link](https://github.com/git-for-windows/git/releases/download/v2.39.0.windows.2/Git-2.39.0.2-64-bit.exe)

## Task 2: Install Node on Windows

Next we install the Node Language support for Windows.
  
  [Latest LTS Version](https://nodejs.org/dist/v18.13.0/node-v18.13.0-x64.msi)

## Task 3: Install VSCode

If not already installed, please install VSCode User.

  [VSCode download link](https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user)

In VS Code install the git extension pack:

  ![image](./.images/01-git-extension-pack.png)

  Add the Bicep Extension to VS Code:

  ![image](./.images/02-bicep-extension.png)

## Task 4: Install Azure Cli

From this download link we install the Azure Cli:

  [Azure Cli Download](https://aka.ms/installazurecliwindows)

## Task 5: Install the Bicep extension and the Bicep PowerShell module

In VS Code please install the Bicep Extension from Microsoft.

  ![image](./../.images/02-bicep-extension.png)

Open a PowerShell window as Administrator and type the following:

`az install` or `az upgrade`

For the Bicep PowerShell modules please type the following:

`az bicep install` or `az bicep upgrade`

  [Back to top](#getting-started)
