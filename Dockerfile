FROM nginx:1.15.7-alpine
LABEL maintainer="Xin Hu <hoosin.git@gmail.com>"

# Install nvm with node and npm
RUN apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/main libuv \
    && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main nodejs=10.16.0-r0 nodejs-npm=10.16.0-r0 \
    && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community yarn=1.16.0-r0 \
    && echo "NodeJS Version:" "$(node -v)" \
    && echo "NPM Version:" "$(npm -v)" \
    && echo "Yarn Version:" "$(yarn -v)"