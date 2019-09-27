FROM node:10.16.3-alpine as base_image

FROM base_image as user_image

ARG host_uid
ARG host_uid_name
ENV image_uid=$host_uid
ENV image_uid_name=$host_uid_name

WORKDIR /siabim
COPY ./siabim/package.json .

RUN mkdir /node_modules && \
    apk update && apk add --no-cache --virtual \
    shadow && \
    adduser -D -H -g "" -h "$(pwd)" \
    -u "$image_uid" "$image_uid_name" && \
    chown -R "$image_uid":"$image_uid" \
    "$(pwd)" /node_modules && \
    npm i gulp -g gulp-cli && \
    npm i && npm audit fix && \
    npm cache clean --force && \
    cp -R ./node_modules/* /node_modules && \
    rm -R ./node_modules && apk del shadow 

ENV NODE_PATH=/node_modules

USER "$image_uid_name"
