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
if(1):
        #os.system('ls -l')
        os.system('sh scp_db.sh')

# Copy to container
if(1):
        container_id = 'e0ad77e6481b'
        os.system('docker cp publicitem.sql' + container_id + ':/opt')



# import cmd
# msyql publicitem < publicitem.sql


# Total Time
end = time()
elapsed = end - start
m, s = divmod(elapsed, 60)
h, m = divmod(m, 60)
print("Total Time: %d:%02d:%02d" % (h, m, s))
