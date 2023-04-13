import { Module } from '@nestjs/common';
import { ItemsService } from './items.service';
import { ItemsController } from './items.controller';
import { ItemsProviders } from './items.providers';
import { DatabaseModule } from 'src/database/database.module';

@Module({
  imports: [DatabaseModule],
  providers: [ItemsService, ...ItemsProviders],
  controllers: [ItemsController],
})
export class ItemsModule {}
