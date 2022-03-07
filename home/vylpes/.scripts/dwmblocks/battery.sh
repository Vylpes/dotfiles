if [ -d /sys/class/power_supply/BAT0 ]
then
	echo $(acpi -V | grep 'Battery 0' | head -n 1 | cut -f2 -d, | sed 's/ //')
fi
