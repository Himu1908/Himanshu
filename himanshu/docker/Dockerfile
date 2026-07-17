# FROM ubuntu:latest
# RUN apt-get update
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get install apache2 -y
# COPY index.html /var/www/html/index.html
# EXPOSE 80
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]




#multistage dockerfile
#--- Stage 1: Download and extract Tomcat ---
FROM alpine:3.24.1 AS downloader

ENV TOMCAT_VERSION=11.0.24
WORKDIR /tmp

RUN apk add --no-cache curl tar && \
    curl -O https://downloads.apache.org/tomcat/tomcat-11/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz




# --- Stage 2: Final image ---
FROM eclipse-temurin:17-jdk

ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH
VOLUME [ "/data" ]
COPY --from=downloader /tmp/apache-tomcat-* $CATALINA_HOME

EXPOSE 8080

CMD ["catalina.sh", "run"]
