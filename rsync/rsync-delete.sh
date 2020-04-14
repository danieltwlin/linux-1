#!/bin/bash

# 1）先建立一個空目錄

mkdir  /data/blank

# 2）用rsync刪除目標目錄

rsync --delete-before -d /data/blank/ /var/spool/clientmqueue/

# 這樣目標目錄很快就被清空了
#
# 註：其中--delete-before 接收者在傳輸之前進行刪除操作
#
# 2、快速刪除大文件：
# 假如你有一些特別大的文件要刪除，比如nohup.out這樣的實時更新的文件，動輒都是幾十個G上百G的，也可以用rsync來清空大文件，而且效率比較高。
#
# 1）創建空文件

touch/data/blank.txt

#2）用rsync清空文件

rsync -a --delete-before --progress --stats /root/blank.txt /root/nohup.out

# rsync所做的系統調用很少：沒有針對單個文件做lstat和unlink操作，但 rm -r 有，所以比較省時間

