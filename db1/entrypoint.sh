#!/bin/bash
echo "Hello"
chmod a+x /usr/local/bin/jb
. /opt/jbase/CurrentVersion/jbase_env.sh
jDLS -ibAP
CREATE-ACCOUNT -e d3 /dbms/cluster
mkdir /tj
jlogadmin -R -c -f 1,1,/tj/tj1
jlogadmin -R -c -f 2,1,/tj/tj2
jlogadmin -R -c -f 3,1,/tj/tj3
jlogadmin -R -c -f 4,1,/tj/tj4
jlogadmin -R -x ON
jlogadmin -R -l 1
jlogadmin -R -a ON

jlogdup input set=current terminate=wait output set=socket hostname=db2 port=6767 1> /dev/null 2> /dev/null &

echo "jRFS 5001/tcp # jRFS Serve" >> /etc/services
export JEDIFILENAME_MD=/dbms/cluster/MD]D
export JEDIFILENAME_SYSTEM=/opt/jbase/SYSTEM]D
export JEDIFILEPATH=/dbms/cluster

jRFS -ib


echo "running tail"
tail -f /dev/null

