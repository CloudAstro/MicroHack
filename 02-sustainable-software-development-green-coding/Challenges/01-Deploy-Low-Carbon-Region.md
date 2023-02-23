# Challenge 1: Deploy to low carbon region

[Previous Challenge](./00-Getting-started.md)(./00-Getting-started.md) - **[Home](../README.md)** - **[Next Challenge](./02-Improve-API-Efficiency.md)**

## Introduction

Our application is now running in the west and north-europe region, but we don't know if those regions are a good choice in terms of carbon usage. To determine if those regions are a good fit we can use the the Carbon Aware SDK.

The challenge will be to use the Caron Aware SDK to determine if the regions in use are a good choice to host it and to automate the deployment process to include checks to select a different region with a lower footprint.

## Challenge

* Use the carbon aware API to determine which region of those regions is using the lowest carbon footprint westeurope, northeurope
* Extend the Github action to pick an low carbon region for deployment

## Success Criteria

* Found a low carbon region with the carbon aware SDK
* Github action is deploying the environment to a low carbon region

### Learning resources

* [Framework documentation](https://learn.microsoft.com/en-us/azure/architecture/framework/sustainability/sustainability-application-platform#deploy-to-low-carbon-regions)
* [Carbon Aware SDK](https://github.com/Green-Software-Foundation/carbon-aware-sdk)
