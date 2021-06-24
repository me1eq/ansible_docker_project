#Dockerfile

#base image
FROM alpine

#jdk11
RUN apk add openjdk11

#tomcat
RUN wget https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46.tar.gz
RUN tar xvfz apache*.tar.gz -C /opt
RUN rm apache-tomcat-9.0.46.tar.gz
RUN rm -rf /opt/apache-tomcat-9.0.46/webapps/*

WORKDIR /opt/apache-tomcat-9.0.46/webapps

ENV PATH $PATH:$CATALINA_HOME/opt/apache-tomcat-9.0.46/bin/

CMD ["catalina.sh","run"]

