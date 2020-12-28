#=== DB Tool ============
# Date   : 2020.02.11
# Author : daniel
# Caption: Get new cn db to Alibaba VM
#========================
import os
import mysql.connector
from time import time
start = time()
print("Start : %s" % start)


# Chdir
os.chdir('/opt/ies_cn_db')

# remote scp DB file
if(0):
        #os.system('ls -l')
        os.system('sh scp_db.sh')

# Copy to container
if(1):
        container_id = 'xxxxxxxxxxxx'
        cmd = 'docker cp db1.sql ' + container_id + ':/opt'
        print(cmd )

        #os.system('docker cp db1.sql ' + container_id + ':/opt')



# import cmd
'''
mysql -uroot -proot db2 < db2.sql
mysql -uroot -proot db1 < db1.sql
mysql -uroot -proot db < tb1.sql
mysql -uroot -proot db1 < tb2.sql
mysql -uroot -proot db1 < tb3.sql
mysql -uroot -proot db1 < tb4.sql
mysql -uroot -proot db1 < tb5.sql

'''
# Total Time
end = time()
elapsed = end - start
m, s = divmod(elapsed, 60)
h, m = divmod(m, 60)
print("Total Time: %d:%02d:%02d" % (h, m, s))
