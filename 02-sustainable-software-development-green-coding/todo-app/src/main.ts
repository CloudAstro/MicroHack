import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // const connectionString =
  //   'Endpoint=sb://<your-service-bus>.servicebus.windows.net/;SharedAccessKeyName=<your-access-key-name>;SharedAccessKey=<your-access-key>';
  // const messageQueue = new MessageQueue(connectionString);

  await app.listen(3000);
}
bootstrap();
