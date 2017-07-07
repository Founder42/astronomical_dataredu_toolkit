#!/bin/bash

#process the event file
for i in $(ls *po_cl.evt.gz);do
	id_temp=${i#*w}
#	echo $id_temp
	id=${id_temp%%x*}
	echo $id
	id_input="'"${id}"',"
	echo -n $id_input >> idfile
	name=${id}".evt"
#	echo $name
	gunzip $i
	fname_temp=${i%.*}
#	fname=${fname_temp}".evt"
#	echo $fname
	mv ${fname_temp} ${id}.evt
	done

#process the exposure map
for j in $(ls *po_ex.img.gz);do
	id_temp=${j#*w}
#	echo $id_temp
	id=${id_temp%%x*}
#	echo $id
	name=${id}".img"
#	echo $name
	gunzip $j
	fname_temp=${j%.*}
#	fname=${fname_temp}".evt"
#	echo $fname
	mv ${fname_temp} ${id}.img
	done

cat idfile | xargs >idfile2
