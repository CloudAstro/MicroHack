# Challenge 4: Optimize for async access patterns

[Previous Challenge](./03-Improve-API-Efficiency.md) - **[Home](../README.md)** - [Next Challenge](./05-Move-to-PaaS-Services.md)


## Introduction

Asynchronous programming is becoming increasingly important in modern software development, especially as applications scale in size and complexity. Using external tools and services, such as message queues, can help to optimize application performance and improve scalability and fault tolerance.

One such tool is Azure Service Bus, which provides a message queuing service that allows components to communicate asynchronously. By implementing patterns such as request-reply and event-driven architectures, application components can be decoupled and communication can become more flexible and scalable.

In this context, integrating with Azure Service Bus can help to optimize applications and improve their overall performance and reliability.


[Solution for this challenge](../SolutionGuide/04-Optimize-for-async-access-patterns-solution.md)

## Goal 

The goal of this challenge is to optimize a NestJS application for async access patterns using Azure Service Bus, specifically by implementing the request-reply pattern. The completed solution should improve the application's performance, scalability, and fault tolerance, while also ensuring robustness and reliability through thorough testing and documentation.

### Task 1: Configure Azure Service Bus

- Sign in to the Azure portal and create a new Azure Service Bus namespace.
- Create a new queue in your Azure Service Bus namespace.
- Generate a connection string for your Azure Service Bus namespace.
- Update your NestJS app's configuration with the Azure Service Bus connection string.

### Task 2: Implement request-reply pattern using Azure Service Bus

- Install the `@azure/service-bus` package
- Create a new MessageQueue service that uses the @azure/service-bus package to send and receive messages using Azure Service Bus.
- Update your items service to use the MessageQueue service to send and receive messages asynchronously using the request-reply pattern.
- Update your items resolver to wait for the response from the items service before returning a result.

### Task 3: Implement event-driven pattern using Azure Service Bus

- Update your items service to emit events when items are created, updated, or deleted.
- Create a new ItemEventHandler service that listens for events on your Azure Service Bus namespace.


## Challenge Completed if

- The NestJS application has been updated to use async access patterns with Azure Service Bus.
- The request-reply pattern has been implemented using Azure Service Bus for communication between application components.

