#!/bin/bash
echo "Hello"
chmod a+x /usr/local/bin/jb
. /opt/jbase/CurrentVersion/jbase_env.sh

CREATE-ACCOUNT -e d3 /dbms/cluster
mkdir /tj
jlogadmin -R -c -f 1,1,/tj/tj

jlogadmin -R -c -f 2,1,/tj/tj2
jlogadmin -R -c -f 3,1,/tj/tj3
jlogadmin -R -c -f 4,1,/tj/tj4
jlogadmin -R -x ON
jlogadmin -R -l 1
jlogadmin -R -a ON

echo "jRFS 5001/tcp # jRFS Serve" >> /etc/services
export JEDIFILENAME_MD=/dbms/cluster/MD]D
export JEDIFILENAME_SYSTEM=/opt/jbase/SYSTEM]D
export JEDIFILEPATH=/dbms/cluster

export JDLS=SERVER=db1,SERVER2=db2
jDLS -ib

jRFS -ib

cd /dbms/cluster
MAKE-DEMO-FILE 10000 ORDERS JD
CREATE-FILE TJ TYPE=TJLOG SET=CURRENT

echo "running tail"
#tail -f /dev/null
sleep 10
jlogdup -v input set=current terminate=wait output set=socket hostname=db3 port=6767 &
jlogdup -v input set=current terminate=wait output set=socket hostname=db2 port=6767
tail -f /dev/null

