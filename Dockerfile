# Front-End - Build - Dockerfile
#
# VERSION               0.0.1

FROM nginx

MAINTAINER Bruno Reato

#Entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
