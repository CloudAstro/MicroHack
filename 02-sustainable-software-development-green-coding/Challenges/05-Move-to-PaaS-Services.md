# Challenge 5: Move the application to a PaaS service

[Previous Challenge](./03-Optimze-for-aync-access-patterns.md)(./03-Optimze-for-aync-access-patterns.md) - **[Home](../README.md)**

## Introduction

Our application is still running on IaaS virtual machines we want to change that to run on Container Apps as a PaaS service to reach the final architecture.
Azure Container Apps services enabled you to run microservices and containerized applications on a serverless platform. With Container Apps you enjoy the benefits of running containers while not having to worry about the need to maintain virtual machines, creating complex orchestration processes or manual configuration on the machines.

## Challenge

* Adjust the Bicep and Github action to deploy the application to the Container Apps
* Adjust Front Door service to point to new Container Apps

## Success Criteria

* The application is deployed on the Container apps
* The application can be deployed by GitHub actions
* The application is still reachable

### Learning resources

* [Benefits of Container Apps](https://docs.microsoft.com/en-us/azure/container-apps/compare-options)