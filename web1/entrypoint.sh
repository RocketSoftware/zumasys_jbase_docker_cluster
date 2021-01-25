#!/bin/bash
echo "Hello"
chmod a+x /usr/local/bin/jb
. /opt/jbase/CurrentVersion/jbase_env.sh
CREATE-ACCOUNT -e d3 /dbms/app
mkdir /tj
COPY FROM /tmp TO /opt/jbase/SYSTEM]D CLUSTER
COPY FROM /tmp TO /dbms/app/MD]D ORDERS

export JDLS=SERVER=db1,SERVER2=db2
export JRFS_USEBASE_LOCKS=1

echo "jRFS 5001/tcp # jRFS Serve" >> /etc/services

sh /tmp/jagent.sh &

# Telnet
echo "Loading telnet"
echo "jbaseadm:password" | chpasswd

cp /tmp/telnet /etc/xinetd.d
dos2unix /etc/xinetd.d/telnet

xinetd -stayalive

echo "running tail"
tail -f /dev/null

