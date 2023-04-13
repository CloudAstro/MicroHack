import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { AppController } from './app.controller';
import { ItemsModule } from './items/items.module';
import { DatabaseModule } from './database/database.module';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [ItemsModule, DatabaseModule, ConfigModule.forRoot()],
  controllers: [AppController],
  exports: [],
})
export class AppModule {}
