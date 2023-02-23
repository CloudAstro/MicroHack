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
      dbName: 'MicroHackDB', //Database Name
      endpoint: 'microhackdemo03.mongo.cosmos.azure.com', //Host
      key: '9l7AzI4Pfz9IZ4emFn08qi4DNHulP5vtaaYsSACLXcBXad3QhyMcJLFkVt6JdlAVj5SyZUXhVdbiACDbpViv6g==', //Primary Password
    }),
  ],
  controllers: [AppController],
  providers: [AppResolver],
  exports: [],
})
export class AppModule {}
