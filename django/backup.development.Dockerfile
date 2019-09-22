FROM python:3.7-alpine3.9 as main


FROM main as user
ARG host_user_name
ARG host_user_id
ENV user_name=$host_user_name user_id=$host_user_id
RUN apk update && apk add --virtual --no-cache shadow && \
  adduser -D -g "" -H -u "$user_id" -h "$(pwd)" "$user_name" && \
  chown -R "$user_id":"user_id" "$(pwd)" && del shadow
# USER $user_id:$user_id
#
#
# FROM main as pythonbuild
#
# ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
#
# RUN mkdir /install
# WORKDIR /install
# COPY requierments_development.txt .
#
# RUN apk update && apk add --no-cache --virtual \
#   build-deps gcc python3-dev musl-dev postgresql-dev && \
#   pip install --install-option="--prefix=/install" \
#   -r requierments_development.txt && \
#   apk del build-deps python3-dev gcc musl-dev postgresql-dev
#
#
#
# WORKDIR /klangrausch
# COPY --from-pythonbuild /install /usr/local
