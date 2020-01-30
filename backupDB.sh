#!/bin/bash
FILE=/root/mysql.txt
BACKUPDIR=backup/db_backup

mkdir $BACKUPDIR
rm -rf $FILE
mysql -e "show databases" > /root/mysql.txt
sed -i '/Database/d' $FILE
sed -i '/cphulkd/d' $FILE
sed -i '/modsec /d' $FILE
sed -i '/mysql/d' $FILE
sed -i '/leechprotect/d' $FILE
sed -i '/information_schema/d' $FILE
sed -i '/performance_schema/d' $FILE
for i in `cat /root/mysql.txt`; do mysqldump $i > /$BACKUPDIR/$i.sql; done
