#!/bin/bash
echo $*
cd ~/M81/data/$*/xrt/event
name1=$*".evt.gz"
echo $name
#ls *po_cl.evt.gz |  xargs -I {} mv {} $name
ls *po_cl.evt.gz |  xargs -I {} cp {} ~/M81/data/ev_expo
ls *po_ex.img.gz |  xargs -I {} cp {} ~/M81/data/ev_expo
cd ~/M81/data/ev_expo
