#!/bin/bash #shebang
cd /opt/
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.tar.gz
TOMCAT=$(ls -l | grep apache-tomcat | awk '{print $9}')
tar vxfz $TOMCAT
rm -rf $TOMCAT
TOMCAT_DIR=$(ls -l | grep apache-tomcat | awk '{print $9}')
mv $TOMCAT_DIR tomcat
cp /opt/tomcat/webapps/manager/META-INF/context.xml /opt/tomcat/webapps/manager/META-INF/context.xml-bkp
cp /root/javaapplication-art/context.xml /opt/tomcat/webapps/manager/META-INF/
cp /opt/tomcat/conf/tomcat-users.xml /opt/tomcat/conf/tomcat-users.xml-bkp
cp /root/javaapplication-art/tomcat-users.xml /opt/tomcat/conf/
echo "tomcat install sucessfully"
ln -s /opt/tomcat/bin/startup.sh /usr/bin/tomcatstart
tomcatstart
