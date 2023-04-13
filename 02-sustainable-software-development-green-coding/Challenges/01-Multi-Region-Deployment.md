# Challenge 1: Multi-region deployment for fast region switches

**[Home](../README.md)** - [Challenge One](./00-Pre-Reqs.md)

## Introduction

To implement the first stage of our architecture we need to deploy Azure Virtual Machines, a Cosmos DB and Front Door as an entrypoint to the application.

Starting with the virtual machines you should use Ubuntu as an operating system and you need to install Docker on the machines. Next our container from the ACR needs to be pulled and run. The application should then be available on port 80 via a public IP.

To store our application data we're going to use an Azure Cosmos DB with a MongoDB database. The Cosmos DB should be setup as geo-replicated to multiple regions and multi-write enabled. This will give you the most flexibility in terms of availability of the database and being able to write from and region to the database.

Lastly we are using Azure Front Door as our entrypoint to the application which will take care of distributing the traffic across our regional virtual machines.  Front Door enables you to define, manage, and monitor the global routing for your web traffic by optimizing for top-tier end-user performance and reliability. It includes a range of traffic-routing methods and backend health monitoring options.

## Challenge

* Create an automated deployment of virtual machines running the application container
* Create Azure Cosmos DB MongoDB with geo-replication and multi-write enabled
* Create an Github action workflow that deploys the containerized application to Azure Virtual machines in multiple regions with bicep
* Create Azure Front Door service to distribute incoming requests
* Import demonstration dataset to the MongoDB

## Success Criteria

* The application is running on the virtual machines
* The Web API is accessible through the Front Door public endpoint
* You can add additional regions via the Github action workflow
* You can retrieve the application data on the /items/findAll REST endpoint

### Learning resources

* [ACR documentation](https://learn.microsoft.com/en-us/azure/container-registry/)
* [Azure Container Apps documentation](https://learn.microsoft.com/en-us/azure/container-apps/)
* [Azure Front Door documentation](https://learn.microsoft.com/en-us/azure/frontdoor/)
* [Highly available multi-region web application](https://learn.microsoft.com/en-us/azure/architecture/reference-architectures/app-service-web-app/multi-region)