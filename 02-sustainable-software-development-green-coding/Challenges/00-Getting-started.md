# Challenge 0: Getting started and setting up the environment

**[Home](../README.md)** - [Challenge One](./00-Getting-started.md)

## Introduction

To demonstrate the green coding principles we are going to create a starting environment that we gradually evolve from a traditional application deployment into a modern application applying different optimizations. 

The challenge will be to setup the basic Azure resources we need to get started with the optimizations of the application in the following challenges.

## Architecture

To have a reliable scenario, we will create a simple blog API application that can display articles from a CosmosDB database. The application should be highly-available across multiple Azure regions and includes only Europe-based regions with the lowest carbon footprint.

Below you can find the architecture diagrams of the different application stages we're going to build.
We're starting with a scenario that is based on virtual machines and evolve to a solution with Container apps 

![VM Architecture](../Images/architecture-stage01.png)

![Container Apps Architecture](../Images/architecture-stage02.png)

## Components

* Azure resource groups are logical containers for Azure resources. You use a single resource group to structure everything related to this solution in the Azure portal.
* Azure Front Door is an application delivery network as a service that offers dynamic site acceleration as well as global load balancing with near real-time failover.
  It also works as a global, scalable entry-point to protect and decouple the inner structure from incoming traffic.
* Azure Container Instance is a container service used to run container images. Each container service is a managed virtual machine.
* Azure Container Apps is a fully managed, serverless container service used to build and deploy modern apps at scale. The underlying Azure service is Azure Kubernetes which provides you with the needed infrastructure. We're going to use this service when migrating to a PaaS solution.
* Azure Container Registry (ACR) is to build, scan, replicate and host container images and deploy images from the Azure Container Registry to Container Apps, Kubernetes or other supported systems.

## Challenge

* Create Azure Resource group to place all resources in
* Create Azure Container registry with admin account
* Clone subdirectory TODO and push into personal repository
* Create a Github action that builds and pushes the docker image to your Azure Container Registry
* Create an Azure Virtual Machine running Ubuntu and install Docker in one region
* Create Azure Front Door service to distribute incoming requests
* Create Azure Cosmos DB MongoDB with geo-replication enabled

## Success Criteria

* All services are deployed in the environment
* The Web API is accessible under public DNS and/or IP
  

### Learning resources

* [ACR documentation](https://learn.microsoft.com/en-us/azure/container-registry/)
* [Azure Container Apps documentation](https://learn.microsoft.com/en-us/azure/container-apps/)
* [Azure Front Door documentation](https://learn.microsoft.com/en-us/azure/frontdoor/)
* [Highly available multi-region web application](https://learn.microsoft.com/en-us/azure/architecture/reference-architectures/app-service-web-app/multi-region)