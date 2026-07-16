FROM ubuntu:latest
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
