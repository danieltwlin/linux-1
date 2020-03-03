#!/bin/sh
now="$(date +'%Y%m%d')"
echo "$now"
# 輸出為:　20200303

# date +"%Y-%m-%d %T"
# 2019-03-25 14:40:32

# 寫入檔案
echo $now >> now.txt
