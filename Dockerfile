FROM ubuntu:16.04
ADD  apache-tomcat-8.5.38.zip /root
COPY target/gamutkart.war /root/apache-tomcat-8.5.38/webapps
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME=/user
ENTRYPOINT service nginx start && /root/apache-tomcat-8.5.38/bin/startup.sh && bash
                                                                                     
