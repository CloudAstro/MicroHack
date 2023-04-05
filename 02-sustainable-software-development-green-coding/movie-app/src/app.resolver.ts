import { Query, Resolver } from '@nestjs/graphql';
import { Movie } from './Movie';

@Resolver(() => Movie)
export class AppResolver {
  @Query(() => [Movie], { name: 'movies' })
  async getMovies(): Promise<Movie[]> {
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
