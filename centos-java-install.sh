#!/bin/bash #shebang
yum install java-1.8* -y
VAR=$?
if [ VAR -ne 0 ]; then
    echo "yum install failed" # ture Block
    exit 1
else
    cd /usr/lib/jvm/
    ls -ld java-1.8.0-openjdk-1.8.0.*
    v_java=$(ls -ld java-1.8.0-openjdk-1.8.0.* | awk '{print $9}')
    cp $HOME/.bash_profile $HOME/.bash_profile-bkp
    echo "export JAVA_HOME=/usr/lib/jvm/$v_java" >> $HOME/.bash_profile
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> $HOME/.bash_profile
    source $HOME/.bash_profile
    java -version
    echo 1 |alternatives --config java
    echo ""
    echo "JAVA 8 is installed Successfully"
fi 
