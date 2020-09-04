#how to create a file and changing his creation date
# touch -d "Mon, 2 march 2017 11:20:00" file_name

#find /your_search_destination_dir -mtime +days_number -exec command {} \;

find /root/scripting-repo -mtime +90 -exec ls -l {} \;
