#!/bin/bash

while [ -f ~/BashScriptingonLinux/while_loops/testfile.txt ]
do
	echo "As of $(date), the testfile.txt exists."
	sleep 5
done

echo "As of $(date), the file no longer exists. Exiting."


