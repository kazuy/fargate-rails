FROM nginx:1.17.0

# system update
RUN apt-get update

# set up
COPY ./docker/web/nginx /etc/nginx
ARG NGINX_HOST=127.0.0.1
RUN envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf
EXPOSE 80
