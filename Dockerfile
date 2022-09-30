FROM node:14.20.1

ENV LANG=ja_JP.UTF-8
ENV HOME=/home/node
ENV APP_HOME="$HOME/nx-story-test"
ENV NODE_ENV=development
WORKDIR $APP_HOME

# curl for api test
# git for jest
# vim for git merge
RUN apt-get update && apt-get install -y \
  postgresql-client \
  curl \
  git \
  vim

# configuration files
COPY package*.json  yarn.lock ./

RUN echo "WORKDIR is $WORKDIR . HOME is $HOME . LANG is $LANG ." && npm config list

RUN yarn install