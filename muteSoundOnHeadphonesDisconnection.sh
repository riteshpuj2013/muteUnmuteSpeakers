while true
do 
	status=$(acpi_listen -c 1 | xargs)
	echo $status | grep -w "unplug" && amixer sset Master mute
        echo $status | grep -w "plug" && amixer sset Master playback 50%
done
	
