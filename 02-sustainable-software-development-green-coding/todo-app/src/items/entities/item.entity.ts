import { Field, ObjectType } from '@nestjs/graphql';
import { Document } from 'mongoose';

export interface Items extends Document {
  id: string;

  task: string;

  priority: string;

  assignedTo: string[];
}
