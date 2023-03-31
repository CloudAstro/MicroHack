import { Controller, Get } from '@nestjs/common';
import { Movie } from './Movie';

@Controller()
export class AppController {
  @Get('/')
  getMovies() {
    const movie: Movie = {
      name: 'Movie1',
      desc: 'This is a movie',
      actors: ['John Doe', 'Lisa Zimmermann'],
      genre: ['Action', 'Drama'],
      producer: 'Tony Smith',
    };
    const movies = Array(10).fill(movie);

    return movies;
  }
}
