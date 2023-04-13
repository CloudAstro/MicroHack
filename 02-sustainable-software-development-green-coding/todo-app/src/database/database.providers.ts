import * as mongoose from 'mongoose';

export const databaseProviders = [
  {
    provide: 'microhack.mongo.cosmos.azure.com',
    useFactory: (): Promise<typeof mongoose> =>
      mongoose.connect(process.env.DATABASE_URL),
  },
];
