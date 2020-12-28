#!/bin/bash
sshpass -p'pwd' scp rd@host:/opt/py/db2.sql .
sshpass -p'pwd' scp rd@host:/opt/py/db1.sql .
sshpass -p'pwd' scp rd@host:/opt/py/tb1.sql .
sshpass -p'pwd' scp rd@host:/opt/py/tb2.sql .
sshpass -p'pwd' scp rd@host:/opt/py/tb3.sql  .
sshpass -p'pwd' scp rd@host:/opt/py/tb3.sql  .
sshpass -p'pwd' scp rd@host:/opt/py/tb5.sql  .

# sample 
host=192.168.xx.xx
pwd=123
/usr/bin/sshpass -p$pwd /opt/lampp/bin/mysqldump -uroot -p --opt -a --host=$host db2 > db2.sql


# copy to container
#docker cp db2.sql container_id:/opt
#docker cp db1.sql container_id:/opt
#docker cp tb1.sql container_id:/opt
#docker cp tb2.sql container_id:/opt
#docker cp tb3.sql container_id:/opt
#docker cp tb4.sql container_id:/opt
#docker cp tb5.sql container_id:/opt

# docker exec -it  laradock_mysql_1 /bin/bash
