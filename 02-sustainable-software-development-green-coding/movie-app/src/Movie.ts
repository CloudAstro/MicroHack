import { Field, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class Movie {
  @Field(() => String)
  name: string;

  @Field(() => String)
  desc: string;

  @Field(() => [String])
  actors: string[];

  @Field(() => [String])
  genre: string[];

  @Field(() => String)
  producer: string;
}
