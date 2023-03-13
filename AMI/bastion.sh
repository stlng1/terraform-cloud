#!/bin/bash
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install -y dnf-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm 
sudo yum install -y mysql-server wget vim telnet htop git python3 net-tools zip
sudo systemctl start chronyd
sudo systemctl enable chronyd


#installing java 11
sudo yum install -y java-11-openjdk-devel
sudo echo "export JAVA_HOME=$(dirname $(dirname $(readlink $(readlink $(which javac)))))" >> ~/.bash_profile
sudo echo "export PATH=$PATH:$JAVA_HOME/bin" >> ~/.bash_profile
sudo echo "export CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar" >> ~/.bash_profile
source ~/.bash_profile


sudo yum -y install python3-pip

# install botocore, ansible and awscli
pip install boto
pip install boto3
pip install PyMySQL
pip install mysql-connector-python
pip install --upgrade setuptools
pip install --upgrade pip
pip install psycopg2==2.7.5 --ignore-installed
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo yum install ansible -y
sudo yum install -y policycoreutils-python-utils
ansible-galaxy collection install amazon.aws
ansible-galaxy collection install community.general
ansible-galaxy collection install community.mysql
ansible-galaxy collection install community.postgresql

