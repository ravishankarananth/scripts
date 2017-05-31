#!/bin/bash  
echo "This is a shell script to install petclinic"  
#update linux repo
sudo apt-get -y update

#install JAVA
sudo apt-get -y install openjdk-8-jdk
#install GIT
sudo apt-get -y install git
#install Maven
sudo apt-get -y install maven
#set path of java home
sudo bash -c "echo 'JAVA_HOME=\"usr/lib/jvm/java-8-openjdk-amd64\"' >> /etc/environment"


#clone petclinic and build
sudo git clone https://github.com/spring-projects/spring-petclinic.git /home/spring-petclinic
cd /home/spring-petclinic
./mvnw spring-boot:run