import * as mongoose from 'mongoose';

export const ItemSchema = new mongoose.Schema({
  id: Number,

  task: String,

  priority: String,

  assignedTo: [String],
});
