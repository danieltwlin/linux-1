#=== DB Tool ============
# Date   : 2020.03.06
# Author : daniel
# Caption: Get new cn db to Alibaba VM
#========================
import os
import mysql.connector
from time import time
start = time()
print("Start : %s" % start)

# Set Work DIR
if(1):
        workpath = '/opt'
        os.chdir(workpath)

# Dump DB
if(1):
        # DB host
        host ='xx.xx.xx.xx'
        if(0):
                os.system('sudo rm db1.sql')
                os.system('sudo rm table1.sql')
                os.system('sudo rm db2.sql')

        if(1):
                os.system('/opt/lampp/bin/mysqldump --host=' + host + ' db1 > db1.sql')

                os.system('/opt/lampp/bin/mysqldump --host=' + host + '  db1 table1 > table1.sql')

                os.system('/opt/lampp/bin/mysqldump learncenter --host=' + host + ' --ignore-table=db1.tb1_log --ignore-table=db1.tb2_log --ignore-table=db1.tb3 > db1$

                os.system('/opt/lampp/bin/mysqldump --host=' + host + ' db2 > db2.sql')

                os.system('/opt/lampp/bin/mysqldump --host=' + host + ' db3 > db3.sql')

        if(1):
                os.system('/opt/lampp/bin/mysqldump --host=' + host + ' db1 api_log1  > api_log1.sql')
                os.system('/opt/lampp/bin/mysqldump --host=' + host + ' db1 api_log2  > api_log2.sql')

