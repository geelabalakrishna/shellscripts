https://phoenixnap.com/kb/install-tomcat-9-on-centos-7

 56  13/02/24 10:32:40 systemctl status tomcat.service
   57  13/02/24 10:33:18 /usr/local/tomcat/bin/catalina.sh start
   58  13/02/24 10:33:36 ls -ltr /usr/local/tomcat/bin/catalina.sh
   59  13/02/24 10:34:02 chmod 777 /usr/local/tomcat/bin/catalina.sh
   60  13/02/24 10:34:08 ls -ltr /usr/local/tomcat/bin/catalina.sh
   61  13/02/24 10:34:28 systemctl status tomcat.service
   62  13/02/24 10:34:46 systemctl start tomcat.service
   63  13/02/24 10:35:51 journalctl -xe
   64  13/02/24 10:36:39 chmod 777 /usr/local/tomcat/bin/*.sh
   65  13/02/24 10:37:15 ls -ltr /usr/local/tomcat/bin/*.sh
   66  13/02/24 10:37:24 systemctl start tomcat.service
   67  13/02/24 10:37:47 journalctl -xe
   68  13/02/24 10:39:29 cat /etc/systemd/system/tomcat.service
   69  13/02/24 10:42:08 vim /etc/systemd/system/tomcat.service
   70  13/02/24 10:42:41 systemctl start tomcat.service
   71  13/02/24 10:43:00 systemctl reload tomcat.service
   72  13/02/24 10:43:12 systemctl status tomcat.service
   73  13/02/24 10:44:41 sudo systemctl daemon-reload
   74  13/02/24 10:44:45 systemctl status tomcat.service
   75  13/02/24 10:44:58 sudo systemctl enable tomcat
   76  13/02/24 10:45:03 systemctl status tomcat.service
   77  13/02/24 10:49:08 ps -ef | grep tomcat
