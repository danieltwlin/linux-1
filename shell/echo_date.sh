#!/bin/sh
now="$(date +'%Y%m%d')"

echo "$now"

# 輸出為:　20200303

# 寫入檔案
echo $now >> now.txt
