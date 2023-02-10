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
- Add a VM in the created Gallery
- Install tools and dependencies in the VM for the Java Spring Boot Project
- Generalize and create a snapshot of the VM
- Create a new dev definition with the new Image you created
- Delete your previous or create a new dev pool with the new Image 

### Task 1: Create a reusable Microsoft dev box image ready for a Java 17 spring boot project

- Create a Java Spring boot project (Optional: use [Spring Initializr](https://start.spring.io/))

### Task 2: Github Codespaces setup

- Login to [Github Codespaces](https://github.com/features/codespaces)
- Create a blank project
- Write a simple Header "Hello World"
- Start the app

### Task 3: VS Code Extensions

Install the Live Server VS Code Extension in both environments

### Task 4: Source Code Management

- Push your the Dev Box app in to a new Github Repository
- Use Github Codespaces feature to automatically create a new Github repository for your project

## Challenge Completed if

- The "Hello World" app runs on both tools
- Code is pushed in a Github Repository
