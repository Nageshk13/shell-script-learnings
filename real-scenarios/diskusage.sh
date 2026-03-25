#!/bin/bash
disk_size=$( du -sh | awk '{print $1}')        #extract the disk size 
converted_size=$(numfmt --from=iec $disk_size) #convert disk size to numfmt
alert_size=$(numfmt --from=iec 100K)           #specify alert size in variable by numfmt 
if [ "$converted_size" -gt "$alert_size" ]; then    # condition
	echo "disk usage is high from $alert_size than $disk_size ($converted_size bytes)"
else
	echo "disk is normal $disk_size ($converted_size bytes)"
fi

