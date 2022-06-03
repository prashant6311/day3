#!/bin/bash
#Print 4 Frequently Used URLCount in sorted order
for link in `cat access.log |awk '{print $11}' | sort | uniq -cd |head -4`
do 
	echo $link;
done
