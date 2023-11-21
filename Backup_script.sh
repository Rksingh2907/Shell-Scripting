#!/bin/bash

#Database credentials

#echo Enter Username:
#read user
#DB_USER_NAME=$user

DB_USER_NAME="root"

#echo Enter Password:
#read pass
#DB_USER_PASS=$pass

DB_USER_PASS=""

#echo Enter Database Name:
#read d_name
#DB_NAME=$d_name

DB_NAME="SOPRA"


#echo Enter path where you store backup:
#read path
#BACKUP_PATH=$path

BACKUP_PATH="/home/script/backup"

#echo Enter the backup file name
#read file

file="backup06.sql"

if [ -f "/home/script/backup/$file" ]
then
        touch /home/script/backup/newfile
else
        mysqldump -u $DB_USER_NAME -p $DB_USER_PASS $DB_NAME > $BACKUP_PATH/$file
