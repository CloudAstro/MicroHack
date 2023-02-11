# Challenge 2 - Comparison between Microsoft Dev Box and GitHub Codespaces

## Introduction

In this challenge we are going to see a comparison beteween Github Codespaces and Microsoft Dev Box and also a dive and introduction to DevContainers and Custom environment images. 


You have a scenario where your company has a new project which needs to be done in Java Spring Boot. The Developers who will be working on that project
are seperated, and do not have the neccessary tools to start working on a java project. 

You need to configure the cloud environment development so that everyone can start coding imediately.

You are a developer yourself and also need to code on that Project.

[Solution for this challenge](../solutionguide/02-Comparison-between-Microsoft-Dev-Box-and-Github-Codespaces-Solution.md)

## Goal 

By completing this challenge you will: 

- What are environment images and devContainers and how to configure them in Microsoft dev box and GitHub Codespaces.
- Diferentiate which tool could be your option in your next project
- Start a project in your pre-configured cloud environment


### Task 1: Create a reusable Microsoft dev box image ready for a Java 17 spring boot project

Now that we have a dev box created lets create an image for a Java Spring Boot project.

- Create a Compute Gallery
- Add a VM image in the created Gallery
- Install tools and dependencies in the VM for the Java Spring Boot Project (intellij IDE and JDK 17 or 19)
- Create a snapshot of the VM
- Generalize and capture the image
- Create a new dev box definition with the new Image you created
- Delete your previous or create a new dev box pool with the new Image 

### Task 2: After your environment is ready now create the project and push your code in a Source Code Repo.

- Create a Java Spring boot project (Optional: use [Spring Initializr](https://start.spring.io/))
- Create a simple Get Request and run your code
- Push your code to Github

### Task 3: Github Codespaces environment setup

- Login to [Github Codespaces](https://github.com/features/codespaces)
- Create a new codespace and chose the repository we created earlier in the prevous tasks with the Spring Project
- create a `Dockerfile` and a `devcontainer.json` File insde a `.devcontainer` folder and apply configurations about scaling and project tools and exensions needed for a Java Spring Boot project


### Task 4: Make changes in the project

In our project, in the Greet class add another sentence to the greeting

## Challenge Completed if

You your code runs in DevBox and Github Codespaces
