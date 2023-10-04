#!/bin/bash

mynum=300

if [ $mynum -gt 200 ]  # -gt -ne -eq
then
	echo "The condition is true."
else
	echo "The variable isn't equal to 200"
fi


if [ -f ~/BashScriptingonLinux/if_clauses/myfile.txt ]
then
	echo "The file exists."
else
	echo "The file doesn't exist"
fi






