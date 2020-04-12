#!/bin/bash

# 注意當前目錄 ./* 的用法
 rsync -av ./* root@xx.xx.xx.xx:/nasmnt/shared/

# rsync 遠端備份
# 用法就跟 scp 指令很像，不過 rsync 會更有效率
rsync -av /mypath/myfile.gz pi@192.168.1.12:/mybackup/

rsync 從遠端抓資料
rsync -av  pi@192.168.1.12:/mybackup/  /mypath/myfile.gz 

# 複製 link 檔
rsync --include '*.lnk' ./*  /src root@:/dest/


# 顯示傳輸進度 ，會拖慢速度，慎用
# 如果要讓 rsync 在傳輸檔案時可以即時顯示進度，可以加上 --progress 參數，或是大寫P：
# -z 會先進行壓縮
# - h 會用比較好懂的數字表示
rsync -avzh --progress pi@192.168.1.12:/mypath/myfile.gz /mybackup/

rsync -avP --progress pi@192.168.1.12:/mypath/myfile.gz /mybackup/

# 排除特定資料夾
rsync -av --exclude 'dir' source destination

# 排除多個資料夾
rsync -av --exclude 'dir1' --exclude 'dir2' source destination

# 如果想要避掉 某幾個目錄下的子目錄 像是每個目錄下的.svn資料夾，
# 可以直接用 --exclude '.svn/'， 他會自動避掉所有符合名稱的子目錄
# 而如果是每個子目錄底下的檔案的話，
# 如templates_c/底下的檔案，可以用 --exclude 'templates_c/*'

#--size-only 只比對檔案大小，適用在時間不同步時

