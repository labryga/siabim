FROM node:10.16.3-alpine as base_image


FROM base_image as user_image

ARG host_uid
ARG host_uid_name
ENV image_uid
ENV image_uid_name
