# Challenge 3: Improve API efficiency

[Previous Challenge](./02-Deploy-Low-Carbon-Region.md) - **[Home](../README.md)** - **[Next Challenge](./04-Optimize-for-async-access-patterns.md)**


## Introduction

Switching from a REST API to a GraphQL API can provide significant benefits in terms of CPU and memory usage. GraphQL's query optimization and selective field retrieval can greatly reduce the amount of data retrieved from a server, resulting in faster response times and lower resource consumption. 

In this challenge, we will explore switching to a GraphQL API with ease using nestjs.

[Solution for this challenge](../SolutionGuide/03-Improve-API-Efficiency-solution.md)

## Goal 

The goal of this challenge is to successfully switch an existing app from a REST API to a GraphQL API, optimizing its performance and reducing CPU and memory usage.

### Task 1: Install the necessary dependencies

 - `@nestjs/graphql`
 - `@nestjs/apollo` 
 - `@apollo/server graphql`

### Task 2: Define GraphQL schemas (Code-First with auto-generated schema)

NestJS provides a code-first approach to defining GraphQL schemas that allows you to define your schema directly in code, and have it automatically generate the necessary schema files for you. To do this, first, define your GraphQL types as TypeScript classes with decorators to specify the fields and types

### Task 3: Create resolvers

Once you have defined your GraphQL schema, create resolvers for each query and mutation defined in the schema. Resolvers are responsible for fetching the data from your database or other data sources and returning the requested information to the client.


### Task 4: Update routes and controllers & test your GraphQL API

Finally, remove any REST API routes and controllers that are no longer needed and replace them with GraphQL resolvers. Run your code and test the API.


## Challenge Completed if

- The app has successfully transitioned from a REST API to a GraphQL API, with all REST routes and controllers replaced with GraphQL resolvers. The app's performance should be optimized, and CPU and memory usage should be reduced. A test suite should be created to ensure all GraphQL queries and mutations function correctly.

