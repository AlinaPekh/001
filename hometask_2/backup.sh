!/bin/bash

#idetify parameters

source_dir=$1
backup_dir=$2

if ["$1" = source_dir] then
then
exit
fi

if ["$2" = backup_dir]then
then
exit
fi

#backup directory to use

foldername='date+%d-%m-%y'

if [ ! -d $backup_dir ]; then
  mkdir -p /home/vagrant/$foldername
fi

find source_dir -mtime -1 -type f -exec ls-l \;
