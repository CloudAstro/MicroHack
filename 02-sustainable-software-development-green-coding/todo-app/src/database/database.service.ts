import { Injectable } from '@nestjs/common';

@Injectable()
export class DatabaseService {
  findAll() {
    return `This action returns all database`;
  }

  findOne(id: number) {
    return `This action returns a #${id} database`;
  }

  remove(id: number) {
    return `This action removes a #${id} database`;
  }
}
