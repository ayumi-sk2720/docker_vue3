FROM node:16.16

RUN apt-get update -qq \
    && npm install -g @vue/cli

WORKDIR /app
COPY  . /app
RUN yarn install

EXPOSE 8080
CMD ["yarn", "run", "serve"]