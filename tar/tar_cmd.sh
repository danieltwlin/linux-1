#!/bin/bash


#我們以tomcat 為例，打包的時候我們要排除 tomcat/logs 目錄，命令如下：

tar -zcvf tomcat.tar.gz –exclude=tomcat/logs tomcat

# 排除多個目錄，增加 –exclude 即可，如下命令排除logs和libs兩個目錄及檔案xiaoshan.txt：

tar -zcvf tomcat.tar.gz –exclude=tomcat/logs –exclude=tomcat/libs –exclude=tomcat/xiaoshan.txt tomcat



#copy 要排除目錄，可以采用rsync命令，而且rsync命令有一个优点，复制的文件太多的时候可以支持续传。调用的格式如下

#忽略一个目录

rsync -av --exclude='path1/to/exclude' source destination

#忽略多个目录

rsync -av --exclude='path1/to/exclude' --exclude='path2/to/exclude' source destination

#source 源目录
#destination 目标目录

#也可以忽略某一类文件（例如以.jpg结尾的）

rsync -av --exclude='*.jpg' source destination
