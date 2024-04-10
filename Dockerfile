FROM node:20-alpine
WORKDIR /usr/build
COPY package.json yarn.lock ./
RUN yarn install
COPY . /usr/build
RUN yarn build
EXPOSE 7001
ENV PORT 7001
CMD ["yarn", "start"]
