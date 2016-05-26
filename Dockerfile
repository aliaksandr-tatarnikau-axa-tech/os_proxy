FROM node:4.4.3

ENV APP_DIR=/opt/myaxa-apifactory

# NPM package cache
COPY package.json /tmp/package.json
RUN \
    cd /tmp && \
    npm install --production && \
    npm cache clean

# Application setup
RUN \
  mkdir ${APP_DIR} && \
  mkdir ${APP_DIR}/log && \
  cp -a /tmp/node_modules/ ${APP_DIR} && \

COPY server ${APP_DIR}/server
COPY package.json ${APP_DIR}/package.json


USER www-data

WORKDIR ${APP_DIR}

EXPOSE 8080
