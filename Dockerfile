# -------------- Build stage --------------
FROM node:20-alpine AS build

WORKDIR /app

COPY package.json yarn.lock  ./

RUN yarn install

COPY . .

RUN yarn run build

# -------------- Production stage --------------
FROM node:20-alpine AS production

WORKDIR /app

COPY package.json yarn.lock  ./

RUN yarn install --prod

COPY --from=build /app/dist ./dist

CMD yarn run start