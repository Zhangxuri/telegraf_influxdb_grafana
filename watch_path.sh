#!/usr/bin bash
for i in $(ls /home/)
do
	aa=($(du -bs "/home/${i}"))
	echo "example,tag=/home/${i} bytes=${aa}i"
done
