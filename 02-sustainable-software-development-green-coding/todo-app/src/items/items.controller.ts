import { Controller, Get } from '@nestjs/common';
import { ItemsService } from './items.service';

@Controller('items')
export class ItemsController {
  constructor(private readonly itemsService: ItemsService) {}

  @Get('findAll')
  findAll() {
    return this.itemsService.getAllItems();
  }

  @Get('create')
  create() {
    return this.itemsService.create();
  }

  @Get('deleteAll')
  deleteAll() {
    return this.itemsService.deleteAll();
  }
}
