FROM nginx:1.17.0

# system update
RUN apt-get update

# set up
COPY ./docker/web/nginx /etc/nginx
EXPOSE 80
