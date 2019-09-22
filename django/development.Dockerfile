FROM python:3.7-alpine3.9 as main

# user image to run as non root and sync with host
# user name and id; look into build script for details
FROM main as user
WORKDIR /siabim
ARG host_user_name
ARG host_user_id
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYGECODE=1 \
    user_name=$host_user_name user_id=$host_user_id
RUN apk update && \
    apk add --virtual --no-cache shadow && \
    adduser -D -g "" -H \
    -u "$user_id" \
    -h "$(pwd)" "$user_name" && \
    chown -R "$user_id":"$user_id" "$(pwd)" && \
    apk del shadow

# python image to create artefacts 
FROM main as pythonbuild
RUN mkdir /install
WORKDIR /install
COPY requierments_development.txt .
RUN apk update && apk add --no-cache --virtual \
    build-deps musl-dev gcc python3-dev postgresql-dev && \
    pip install --install-option="--prefix=/install" \
    -r requierments_development.txt

# final image stage with copied artefacts
FROM user
COPY --from=pythonbuild /install /usr/local
USER "$user_name"
