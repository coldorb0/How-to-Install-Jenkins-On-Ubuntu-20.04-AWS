#/bin/bash


#How to Install Jenkins On Ubuntu 20.04
sudo apt update -y 
sudo apt upgrade -y 
sudo apt install openjdk-8-jdk -y
readlink -f $(which java)
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
export JAVA_HOME
PATH=$PATH:$JAVA_HOME
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \ /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y
sudo service jenkins start
sudo systemctl enable jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
