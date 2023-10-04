#!/bin/bash

directory=/notexists

if [ -d $directory ]

then
	echo "The directory $directory exists"
else
	echo "The directory $directory doesn't exist"
fi



