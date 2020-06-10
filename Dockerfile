FROM tomcat:alpine
LABEL maintainer="MofisKhan"

COPY target/ /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
