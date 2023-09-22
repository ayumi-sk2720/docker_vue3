FROM node:16.16

RUN apt-get update -qq \
    && npm install -g @vue/cli

WORKDIR /app
COPY  . /app
RUN yarn install

CMD ["yarn", "serve"]