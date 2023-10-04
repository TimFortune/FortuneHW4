# This is Problem 1 of the homework.
# The program carries out the actions labeled a - e
# For question #3, there are no command line arguments as the only invocation possible is ./mySetup.sh

#!/bin/bash

PATH=$PATH:$HOME/cpe422/  	# Sets the temp path to the given directory

export PATH 			# Exports the path

sudo cpufreq-set -c 0 -f 600MHz 	# Sets the frequency of the beaglebone to 600 Mhz

cpufreq-info    	# Displays all the information on the cpu

location="/home/debian"        # creates a variable named location which contains the file location home/debian

echo "Location is: $location"	# Prints/Echos the location

items=$(ls | wc -l)	# Creates a variable named items which gets the current number of items in the workign directory

echo "Items in the current directory: $items"


