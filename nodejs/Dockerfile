FROM node:carbon AS base
WORKDIR /app

FROM base AS dependencies
COPY package.json ./
RUN npm install

FROM dependencies AS build 
WORKDIR /app
COPY . /app
RUN npm run build

FROM node:alpine AS release
WORKDIR /app
COPY --from=dependencies /app/package.json ./
RUN npm install --only=production
COPY --from=build /app ./

EXPOSE 3000

STOPSIGNAL SIGTERM

CMD ["npm", "start"]
