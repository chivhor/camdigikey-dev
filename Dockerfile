FROM node:alpine

RUN mkdir -p /usr/src/camdigikey-app-dev && chown -R node:node /usr/src/camdigikey-app-dev

WORKDIR /usr/src/camdigikey-app-dev

COPY package.json yarn.lock camdigikey-client-library-node ./

USER node

RUN yarn install --pure-lockfile

COPY --chown=node:node . .

EXPOSE 9000
