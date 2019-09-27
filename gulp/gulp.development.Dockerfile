FROM node:10.16.3-alpine as base_image

FROM base_image as user_image

ARG host_uid
ARG host_uid_name
ENV image_uid=$host_uid
ENV image_uid_name=host_uid_name

WORKDIR /siabim

RUN apk update && \
    apk add --no-cache --virtual shadow && \
    adduser -D -H -g "" -h "$(pwd)" \
    -u "$image_uid" "$image_uid_name"

USER "$image_uid_name"
