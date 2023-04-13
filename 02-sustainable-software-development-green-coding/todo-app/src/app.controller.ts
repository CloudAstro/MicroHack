import { Controller, Get } from '@nestjs/common';
@Controller()
export class AppController {
  @Get('/')
  getMovies() {
    return 'hello world';
  }
}
