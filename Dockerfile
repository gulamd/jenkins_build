FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install open-jdk8 -y
ENV JAVA_HOME=/user
ADD apache-tomcat-8.5.38.tar.gz /root
COPY target/gamutkart.war /root/apache-tomcat-8.5.38/webapps
ENTRYPOINT service nginx start && /root/apache-tomcat-8.5.38/bin/startup.sh && bash
                                                                                     
