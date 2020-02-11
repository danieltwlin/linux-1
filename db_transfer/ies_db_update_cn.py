
#=== DB Tool ============
# Date   : 2019.12.17
# Author : daniel
# Caption: Get new cn db to Alibaba VM
#========================
import os
import mysql.connector
from time import time
start = time()
print("Start : %s" % start)


# Chdir
os.chdir('/opt/py')

# Dump DB
if(1):

        if(0):
                os.system('sudo rm publicitem.sql')
                os.system('sudo rm answerinfo.sql')
                os.system('sudo rm learncenter.sql')

        if(0):
                os.system('/opt/lampp/bin/mysqldump --host=172.16.2.149 publicitem > publicitem.sql')

                os.system('/opt/lampp/bin/mysqldump --host=172.16.2.149  learncenter answerinfo > answerinfo.sql')

                os.system('/opt/lampp/bin/mysqldump learncenter --host=172.16.2.149 --ignore-table=learncenter.api_a1_log --ignore-table=learncenter.api_log --ignore-table=learncenter.answerinfo > learncenter$

                os.system('/opt/lampp/bin/mysqldump --host=172.16.2.149 ies_middle > ies_middle.sql')

                os.system('/opt/lampp/bin/mysqldump --host=172.16.2.149 xtrabackup_backupfiles > xtrabackup_backupfiles.sql')

        if(1):
                os.system('/opt/lampp/bin/mysqldump --host=172.16.2.149 learncenter api_a1_log  > api_a1_log.sql')
                os.system('/opt/lampp/bin/mysqldump --host=172.16.2.149 learncenter api_log  > api_log.sql')
