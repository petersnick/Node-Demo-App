FROM node:23.11.1-alpine3.21

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

ENV PORT 3000
CMD ["npm", "run", "start"]