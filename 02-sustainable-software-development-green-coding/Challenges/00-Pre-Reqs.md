# Challenge 0: Getting started and setting up the environment

**[Home](../README.md)** - [Challenge One](./01-Multi-Region-Deployment.md)

## Introduction

To demonstrate the green coding principles we are going to create a starting environment that we gradually evolve from a traditional application deployment into a modern application applying different optimizations.

The challenges will be to setup the basic Azure resources we need to get started. In the subsequent challenges we optimize the application and apply some of the green coding principles.

## Architecture

To have a reliable scenario, we will create a simple ToDo API application that can display articles from a CosmosDB database. The application should be available across multiple Azure regions and should include selected regions with the lowest carbon footprint.

Below you can find the architecture diagrams of the different application stages we're going to build.
We're starting with a scenario that is based on virtual machines and evolve to a solution with Container apps.

![VM Architecture](../Images/architecture-stage01.png)

![Container Apps Architecture](../Images/architecture-stage02.png)

### Components

* Azure resource groups are logical containers for Azure resources. You use a single resource group to structure everything related to this solution in the Azure portal.
* Azure Front Door is an application delivery network as a service that offers dynamic site acceleration as well as global load balancing with near real-time failover.
  It also works as a global, scalable entry-point to protect and decouple the inner structure from incoming traffic.
* Azure Container Instance is a container service used to run container images. Each container service is a managed virtual machine.
* Azure Container Apps is a fully managed, serverless container service used to build and deploy modern apps at scale. The underlying Azure service is Azure Kubernetes which provides you with the needed infrastructure. We're going to use this service when migrating to a PaaS solution.
* Azure Container Registry (ACR) is to build, scan, replicate and host container images and deploy images from the Azure Container Registry to Container Apps, Kubernetes or other supported systems.


### Install/Upgrade Azure Container Apps Extension
To be able to work with Azure Container Apps on the Azure CLI you want to make sure you have the Container Apps extension installed.

Open your PowerShell or Bash console and sign in to Azure from the CLI.
```
az login
```

If you have multiple Azure subscriptions under your account you need to select the subscription you want to use.
```
az account set --subscription <name>
```

Ensure your CLI is updated to the latest version.

```
az upgrade
```

Now you can install/update the Azure Container Apps extension for CLI.

```
az extension add --name containerapp --upgrade
```

If you haven't already, register the "Microsoft.App" and "Microsoft.OperationalInsights" namespaces.

```
az provider register --namespace Microsoft.App
az provider register --namespace Microsoft.OperationalInsights
```

## Challenge

* Create an Azure Resource group to place all resources in
* Create Azure Container registry with admin account
* Clone MicroHack repository and push into personal repository
* Build the Container and push it to the container registry
* Create Azure FrontDoor service for later use

## Success Criteria

* Created resource group to hold all resources
* Azure container registry is deployed and accessible
* Clone MicroHack repository and push into personal repository
* Build the Container and push it to the container registry

### Learning resources

* [ACR documentation](https://learn.microsoft.com/en-us/azure/container-registry/)
* [Azure Container Apps documentation](https://learn.microsoft.com/en-us/azure/container-apps/)
* [Azure Front Door documentation](https://learn.microsoft.com/en-us/azure/frontdoor/)
* [Highly available multi-region web application](https://learn.microsoft.com/en-us/azure/architecture/reference-architectures/app-service-web-app/multi-region)
