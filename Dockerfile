FROM node:14.20.1

ENV LANG=ja_JP.UTF-8
ENV HOME=/home/node
ENV APP_HOME="$HOME/nx-story-test"
ENV NODE_ENV=development
WORKDIR $APP_HOME

# configuration files
COPY package.json ./

RUN echo "WORKDIR is $WORKDIR . HOME is $HOME . LANG is $LANG ." && npm config list

RUN yarn install