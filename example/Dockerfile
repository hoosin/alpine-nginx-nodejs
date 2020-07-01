
FROM hoosin/alpine-nginx-nodejs:latest

MAINTAINER hoosin <hoosin.git@gmail.cn>

ENV APP_ROOT /home/example.hoosin.com
ENV SRC_DIR ./node_modules ./public ./src
ENV NGINX_STATIC /usr/share/nginx/html/
ENV NGINX_CONF /etc/nginx/

WORKDIR $APP_ROOT
COPY . $APP_ROOT

RUN node -v \
    && npm -v \
    && yarn -v \
    && yarn config set registry https://registry.npm.taobao.org \
    && yarn config get registry \
    && yarn install --verbose \
    && yarn build \
    && cp -r nginx/* $NGINX_CONF \
    && cp -r build/* $NGINX_STATIC \
    && rm -rf $SRC_DIR

EXPOSE 80
RUN nginx -t

CMD ["nginx","-g","daemon off;"]