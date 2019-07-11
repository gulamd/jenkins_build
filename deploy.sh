#!/bin/bash
##
##
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA11" ];then
	sshpass -p "gamut" scp target/gamutkart.war gamut@172.17.0.5:/home/gamut/Distros/apache-tomcat-8.5.42 /webapps
	sshpass -p "gamut" ssh gamut@172.17.0.5 "JAVA_HOME=/home/gamut/Distros/jdk1.8.0_201" "/home/gamut/Distros/apache-tomcat-8.5.42/bin/startup.sh"

elif  [ $ENVIRONMENT = "SIT11" ];then
	sshpass -p "gamut" scp target/gamutkart.war gamut@172.17.0.4:/home/gamut/Distros/apache-tomcat-8.5.42 /webapps
	sshpass -p "gamut" ssh gamut@172.17.0.4 "JAVA_HOME=/home/gamut/Distros/jdk1.8.0_201" "/home/gamut/Distros/apache-tomcat-8.5.42/bin/startup.sh"
echo "deployment has been done!"
fi

