FROM alpine:3.9

WORKDIR /topos
COPY ./siabim/package.json .
RUN mkdir /node_modules && \
    apk update && \
    apk add --no-cache --virtual npm shadow && \
    npm i gulp -g gulp-cli && \
    npm i && npm audit fix && \
    npm cache clean --force && \
    cp -R ./node_modules/* /node_modules/ && \
    rm -R ./node_modules

ENV NODE_PATH=/node_modules/
