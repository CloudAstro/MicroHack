FROM node:18 AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install npm@9.6.2
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

RUN npm install

COPY . .

RUN npm run build

FROM node:18

COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/dist ./dist

CMD [ "npm", "run", "start:prod" ]