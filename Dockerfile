FROM ubuntu:14.04
MAINTAINER Docker Education Team <education@docker.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your NEW container' \
    >/usr/share/nginx/html/index.html

CMD [ "nginx", "-g", "daemon on;" ]

RUN echo 'Hi, I am in your NEW1 container' \
    >/usr/share/nginx/html/index.html


EXPOSE 80
