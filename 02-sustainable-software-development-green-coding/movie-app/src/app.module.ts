import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { AzureCosmosDbModule } from '@nestjs/azure-database';
import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { AppController } from './app.controller';
import { AppResolver } from './app.resolver';

@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      autoSchemaFile: true,
    }),
    AzureCosmosDbModule.forRoot({
      dbName: process.env.AZURE_COSMOS_DB_NAME, //Database Name
      endpoint: process.env.AZURE_COSMOS_DB_ENDPOINT, //Host
      key: process.env.AZURE_COSMOS_DB_KEY, //Primary Password
    }),
  ],
  controllers: [AppController],
  providers: [AppResolver],
  exports: [],
})
export class AppModule {}
