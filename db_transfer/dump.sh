#!/bin/bash
host=192.168.0.26
pwd=123
cd /opt
pwd
/usr/bin/sshpass -p$pwd mysqldump -uroot -p --opt -a --skip-lock-tables  --host=$host --port=3306  dbA > dbA.sql
/usr/bin/sshpass -p$pwd mysqldump -uroot -p --opt -a --skip-lock-tables  --host=$host --port=3306 dbB  --ignore-table=tb1.log --ignore-table=tb2.log \
--ignore-table=tb3.log > dbB.sql
/usr/bin/sshpass -p$pwd mysqldump -uroot -p --opt -a --skip-lock-tables  --host=$host --port=3306 dbC > dbC.sql
