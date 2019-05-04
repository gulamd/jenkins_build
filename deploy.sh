#!/bin/bash
##
##
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA1" ];then
	sshpass -p "gamut" scp target/gamutkart.war gamut@172.17.0.2:/home/gamut/Distros/apache-tomcat-8.5.40/webapps
	sshpass -p "gamut" ssh gamut@172.17.0.2 "JAVA_HOME=/home/gamut/Distros/jdk1.8.0_201" "/home/gamut/Distros/apache-tomcat-8.5.40/bin/startup.sh"

elif  [ $ENVIRONMENT = "SIT1" ];then
	sshpass -p "gamut" scp target/gamutkart.war gamut@172.17.0.3:/home/gamut/Distros/apache-tomcat-8.5.40/webapps
	sshpass -p "gamut" ssh gamut@172.17.0.3 "JAVA_HOME=/home/gamut/Distros/jdk1.8.0_201" "/home/gamut/Distros/apache-tomcat-8.5.40/bin/startup.sh"
echo "deployment has been done!"
fi

