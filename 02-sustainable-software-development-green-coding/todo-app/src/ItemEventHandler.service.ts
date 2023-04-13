// import { Injectable } from '@nestjs/common';
// import { OnEvent } from '@nestjs/event-emitter';
// import {
//   ItemCreatedEvent,
//   ItemUpdatedEvent,
//   ItemDeletedEvent,
// } from './movie.events';

// @Injectable()
// export class ItemEventHandler {
//   @OnEvent(ItemCreatedEvent.eventName)
//   handleItemCreatedEvent(event: ItemCreatedEvent) {
//     // Handle ItemCreatedEvent here
//     console.log('Item Created:', event.item);
//   }

//   @OnEvent(ItemUpdatedEvent.eventName)
//   handleItemUpdatedEvent(event: ItemUpdatedEvent) {
//     // Handle ItemUpdatedEvent here
//     console.log('Item Updated:', event.item);
//   }

//   @OnEvent(ItemDeletedEvent.eventName)
//   handleItemDeletedEvent(event: ItemDeletedEvent) {
//     // Handle ItemDeletedEvent here
//     console.log('Item Deleted:', event.itemId);
//   }
// }
