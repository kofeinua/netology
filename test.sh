#!/bin/sh
echo "Было занято в кеше ОЗУ"
free
# Чистим pagecache:
sync
echo Чистим pagecache | sudo tee -a /proc/sys/vm/drop_caches
#Чистим dentrie и inode кэши:
sync
echo dentrie и inode кэши | sudo tee -a /proc/sys/vm/drop_caches
#Чистим pagecache, dentrie и inode кэши:
sync
echo Чистим pagecache, dentrie и inode кэши | sudo tee -a /proc/sys/vm/drop_caches
echo "Стало свободно ОЗУ"
free
exit 0
