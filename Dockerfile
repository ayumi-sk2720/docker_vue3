FROM node:16.16

WORKDIR /app
COPY  . /app

RUN apt-get update -qq \
    && yarn global add @vue/cli \
    && yarn install

EXPOSE 8080

CMD ["yarn", "run", "serve"]