#!/bin/bash
sshpass -p'pwd' scp rd@host:/opt/py/publicitem.sql .
sshpass -p'pwd' scp rd@host:/opt/py/learncenter.sql .
sshpass -p'pwd' scp rd@host:/opt/py/answerinfo.sql .
sshpass -p'pwd' scp rd@host:/opt/py/xtrabackup_backupfiles.sql .
sshpass -p'pwd' scp rd@host:/opt/py/ies_middle.sql  .
sshpass -p'pwd' scp rd@host:/opt/py/api_a1_log.sql  .
sshpass -p'pwd' scp rd@host:/opt/py/api_log.sql  .

hot=192.168.1.2
echo $host

# copy to container
#docker cp publicitem.sql container_id:/opt
#docker cp learncenter.sql container_id:/opt
#docker cp answerinfo.sql container_id:/opt
#docker cp ies_middle.sql container_id:/opt
#docker cp xtrabackup_backupfiles.sql container_id:/opt
#docker cp api_a1_log.sql container_id:/opt
#docker cp api_log.sql container_id:/opt

# docker exec -it  laradock_mysql_1 /bin/bash