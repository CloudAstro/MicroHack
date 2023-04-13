import { Connection } from 'mongoose';
import { Items } from './entities/item.entity';
import { ItemSchema } from 'src/schemas/item.schema';

export const ItemsProviders = [
  {
    provide: 'ITEMS_MODEL',
    useFactory: (connection: Connection) =>
      connection.model('Items', ItemSchema),
    inject: ['microhack.mongo.cosmos.azure.com'],
  },
];
