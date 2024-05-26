#!/bin/sh

echo "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;" > /etc/mysql/init.sql
echo "CREATE USER IF NOT EXISTS $SQL_USER@'%' IDENTIFIED BY '$SQL_PASSWORD';" >> /etc/mysql/init.sql
echo "GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO $SQL_USER@'%';" >> /etc/mysql/init.sql
echo "FLUSH PRIVILEGES;" >> /etc/mysql/init.sql

mysqld