FROM node:12-alpine

WORKDIR /room

COPY package.json yarn.lock ./
RUN yarn

ARG NODE_ENV=production

COPY tsconfig.json ./
COPY src ./src
RUN yarn build

EXPOSE 3002
CMD ["yarn", "start"]
