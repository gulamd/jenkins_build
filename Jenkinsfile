pipeline {
	agent any

	stages {
	    stage('Checkout') {
	        steps {
			 git 'https://github.com/gulamd/jenkins_build.git'			        
		    }
	    }
		stage('Build') {
	        steps {
				sh '/home/ubuntu/Distros/apache-maven-3.6.0/bin/mvn install'
	        }
		}
		stage('Deployment') {
			steps {
				sh 'sshpass -p "gamut" scp target/gamutkart.war gamut@172.17.0.3:/home/gamut/Distros/apache-tomcat-8.5.40/webapps'
				sh 'sshpass -p "gamut" ssh gamut@172.17.0.3 "JAVA_HOME=/home/gamut/Distros/jdk1.8.0_201" "/home/gamut/Distros/apache-tomcat-8.5.40/bin/startup.sh"'
				
			}
			
		}

	}
}
