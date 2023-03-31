# Challenge 2: Deploy to low carbon region

[Previous Challenge](./01-Multi-Region-Deployment.md) - **[Home](../README.md)** - **[Next Challenge](./03-Improve-API-Efficiency.md)**

## Introduction

Our application is now running in two regions, but we don't know if those regions are a good choice in terms of carbon usage. To determine if those regions are a good fit we can use the the Carbon Aware SDK. The Carbon Aware SDK was developed to be able to run application in the best region where the carbon footprint is the lowest.

The challenge will be to use the Caron Aware SDK to determine if the regions in use are a good choice to host it and to automate the deployment process to include checks to select a different region with a lower footprint.

## Challenge

* Use the carbon aware API to determine which region of those regions is using the lowest carbon footprint uksouth, francecentral
* Extend the Github action to pick an additional low carbon region for deployment

## Success Criteria

* Found a low carbon region with the carbon aware SDK
* Github action is deploying the environment to an additional lower carbon region then the existing ones

### Learning resources

* [Framework documentation](https://learn.microsoft.com/en-us/azure/architecture/framework/sustainability/sustainability-application-platform#deploy-to-low-carbon-regions)
* [Carbon Aware SDK](https://github.com/Green-Software-Foundation/carbon-aware-sdk)
