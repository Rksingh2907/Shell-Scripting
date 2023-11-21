#!/bin/bash


#user credentials 

username="root"
password=""

read -p "Enter the file path " file_path
read -p "Enter the Database Name " db_name
mysql -u $username -p $password $db_name < $file_path
