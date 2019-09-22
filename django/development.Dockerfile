FROM python:3.7-alpine3.9 as main


FROM main as user
WORKDIR /klangrausch
ARG host_user_name
ARG host_user_id
ENV user_name=$host_user_name 
ENV user_id=$host_user_id
RUN apk update && \
    apk add --virtual --no-cache shadow && \
    adduser -D -g "" -H \
    -u "$user_id" \
    -h "$(pwd)" "$user_name" && \
    chown -R "$user_id":"$user_id" "$(pwd)" && \
    apk del shadow
USER "$user_name"
