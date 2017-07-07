#!/bin/bash

#this script is to untar every raw-data and read the file name of eventlist (w2/w3) and print the eventlist name to a file.
#ls *.zip |  xargs -i unzip {} -C ~/M81/data
#cd ~/M81/data
#here needs a loop for every

for i in $(ls 000*);do
	unzip ${i} -d ~/M81/data
	done
#cd ~/M81/data
#for i in $(ls ~/M81/data/000*);do
#	echo ${i}
#	echo $i
#ls -l | grep 	mv ~/M81/data/${i}/xrt/event/

#	unzip ${i}
#	cd ~/M81/data/${i}/xrt/event
#	mv $(ls *po_cl.evt.gz) ${i}.evt
#	done
ls ~/M81/data | grep ........ |  xargs -I {} ./extract.sh {}

