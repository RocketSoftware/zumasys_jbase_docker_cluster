#!/bin/bash
echo "Hello"
chmod a+x /usr/local/bin/jb
. /opt/jbase/CurrentVersion/jbase_env.sh
CREATE-ACCOUNT -e d3 /dbms/app
mkdir /tj

echo "jRFS 5001/tcp # jRFS Serve" >> /etc/services

echo "running tail"
tail -f /dev/null

