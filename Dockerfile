
ARG NODE_VERSION="lts"

FROM node:${NODE_VERSION}-alpine

ARG NUXT_PORT="3000"
ARG NUXT_HOST="0.0.0.0"

ENV PORT=$NUXT_PORT \
    HOST=$NUXT_HOST

WORKDIR /var/www

COPY ./code ./

RUN yarn install

EXPOSE $NUXT_PORT

CMD ["yarn", "dev"]
