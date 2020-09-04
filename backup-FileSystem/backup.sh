#!/bin/bash

#archivage : tar cvf arch_folder /folders_to_archive
#compress : gzip archivage_folder

tar cvf /tmp/backup.tar /etc /var

gzip /tmp/backup.tar

#verify if the backup exists
find /tmp/backup.tar.gz -mtime -1 -type f -print $> /dev/null

if [ $? -eq 0 ]

then

echo Backup was created
echo
echo Archiving backup

#scp folder_path user@remote_ip_adress:/folder_path
scp /tmp/backup.tar.gz root@192.168.1.x:/path

else

echo Backup failed

fi


