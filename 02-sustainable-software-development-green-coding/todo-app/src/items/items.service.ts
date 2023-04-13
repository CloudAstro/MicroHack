import { Model } from 'mongoose';
import { Items } from './entities/item.entity';
import { Inject, Injectable } from '@nestjs/common';

@Injectable()
export class ItemsService {
  constructor(
    @Inject('ITEMS_MODEL')
    private readonly itemsModel: Model<Items>,
  ) {}

  async getAllItems() {
    return await this.itemsModel.find();
  }

  async create() {
    const items = await this.itemsModel.create([
      {
        id: 1,
        task: 'Clean the room',
        priority: 'middle',
        assignedTo: ['John,', 'Marc'],
      },
      {
        id: 2,
        task: 'Cook for dinner',
        priority: 'high',
        assignedTo: ['Anna', 'Benny'],
      },
      {
        id: 3,
        task: 'Grocery store',
        priority: 'medium',
        assignedTo: ['Andreas'],
      },
      {
        id: 4,
        task: 'Pick the children from school',
        priority: 'high',
        assignedTo: ['Leo'],
      },
      {
        id: 5,
        task: 'Wash the car',
        priority: 'low',
        assignedTo: ['Klaus', 'Marie'],
      },
    ]);

    if (items) return 'added successfully';

    return 'something went wrong';
  }

  async deleteAll() {
    await this.itemsModel.deleteMany();

    return 'items deleted';
  }

  // async handleRequest(method: string, payload: any): Promise<any> {
  //   switch (method) {
  //     case 'getAllItems':
  //       return await this.getAllItems();

  //     default:
  //       throw new Error(`Unsupported method: ${method}`);
  //   }
  // }

  // async createItem(item: any): Promise<any> {
  //   const event = {
  //     eventType: 'itemCreated',
  //     data: item,
  //   };
  //   await this.messageQueueService.emitEvent(event);

  //   return item;
  // }

  // async updateItem(itemId: string, item: any): Promise<any> {
  //   const event = {
  //     eventType: 'itemUpdated',
  //     data: item,
  //   };
  //   await this.messageQueueService.emitEvent(event);

  //   return item;
  // }

  // async deleteItem(itemId: string): Promise<void> {
  //   const event = {
  //     eventType: 'itemDeleted',
  //     data: { itemId },
  //   };
  //   await this.messageQueueService.emitEvent(event);
  // }
}
