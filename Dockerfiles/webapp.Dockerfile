FROM node:current-alpine3.18

USER node

RUN mkdir -p /home/node/webapp

WORKDIR /home/node/webapp

COPY --chown=node:node . /home/node/webapp

ENV DATABASE_DISABLE_SSL=true

RUN npm install

CMD ["node", "app.js"]