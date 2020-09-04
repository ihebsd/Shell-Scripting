#find /your_search_destination_dir -mtime +days_number -exec command {} \;

find /root/scripting-repo -mtime +90 -exec mv {} {}.old  \;
