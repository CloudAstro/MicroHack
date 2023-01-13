# Challenge 7 - Deploy as containerized application

## Introduction

In this challenge you are going to deploy our React app as a containerized app using Docker & Docker Hub. This is one way of deploying your app, -containerized in Azure App Service.

[Solution for this challenge](../SolutionGuide/07-Deploy-as-containerized-application-solution.md)

## Goal 

The goal for this challenge is to create a docker image of your react app, push on Docker Hub and then deploy in Azure App Service from there.

### Task 1: Create a docker image of your react app

There are a few steps creating a docker image of the same React App we used before.

- Open Docker Desktop (Windows & Mac)
- Create a Dockerfile and prepare your image
- You will need Nginx in order to create a react app image, create a Nginx config file and write your configuration
- Create a docker compose file and define the services
- Build your image

### Task 2: Push image on Docker Hub

After your image has been build now push to your Docker Hub Repo as a public image.

### Task 3: Create a new Azure App Service and deploy

Next you need to create an Azure App Service.

- Select Containerized app option
- Provide docker image/tag


## Challenge Completed if

Your containerized app is deployed and runs (Azure App Service)
