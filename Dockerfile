FROM tomcat:8.5

FROM tomcat:8.0-alpine

LABEL maintainer="deepak@softwareyoga.com"

COPY */target/Student-Inventory.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
