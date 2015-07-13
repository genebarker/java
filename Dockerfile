#-----------------------------------------------------------
# java - a headless Java JRE on Debian 8 Docker Container
#
# For usage info, just run the image without a command:
#   $ docker run -rm genebarker/java
#
# Note: This image uses the openjdk-8-jre-headless package
#       from jessie-backports (backports.debian.org).
#-----------------------------------------------------------
FROM debian:8.1

MAINTAINER Eugene F. Barker <genebarker@gmail.com>

# install dependencies
RUN echo 'deb http://http.debian.net/debian jessie-backports main' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get -t jessie-backports install -y openjdk-8-jre-headless 

# initialize application home
RUN mkdir /root/home

# copy in HelloWorld (overwritten when folder mounted)
COPY ./HelloWorld.class /root/home/

# copy in entrypoint script
COPY ./entrypoint.sh /

# set entry point
ENTRYPOINT ["/entrypoint.sh"]
