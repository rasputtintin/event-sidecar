FROM node:10.15.3-alpine

WORKDIR /opt/event-sidecar

RUN apk add --no-cache -t build-dependencies git make gcc g++ python libtool autoconf automake \
    && cd $(npm root -g)/npm \
    && npm config set unsafe-perm true \
    && npm install -g node-gyp

COPY package.json package-lock.json* /opt/event-sidecar/
RUN npm install --production

RUN apk del build-dependencies

COPY config /opt/event-sidecar/config
COPY src /opt/event-sidecar/src

EXPOSE 4000
CMD ["npm", "run", "start"]
