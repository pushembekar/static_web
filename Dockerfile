#Version: 0.0.1
FROM ubuntu:16.04
MAINTAINER Pushkar Shembekar "example@gmail.com"
RUN apt-get update; apt-get install -y nginx; apt-get install nano
RUN echo 'Hi, I am in your container'>/var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
