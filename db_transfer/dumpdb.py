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
        container_id = 'f7313229ea07'
        cmd = 'docker cp learncenter.sql ' + container_id + ':/opt'
        print(cmd )

        #os.system('docker cp learncenter.sql ' + container_id + ':/opt')



# import cmd
'''
mysql -uroot -proot publicitem < publicitem.sql
mysql -uroot -proot learncenter < learncenter.sql
mysql -uroot -proot learncenter < answerinfo.sql
mysql -uroot -proot learncenter < ies_middle.sql
mysql -uroot -proot learncenter < xtrabackup_backupfiles.sql
mysql -uroot -proot learncenter < api_a1_log.sql
mysql -uroot -proot learncenter < api_log.sql

'''
# Total Time
end = time()
elapsed = end - start
m, s = divmod(elapsed, 60)
h, m = divmod(m, 60)
print("Total Time: %d:%02d:%02d" % (h, m, s))
