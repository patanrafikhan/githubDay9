#!/bin/bash -x

fullDay=1
halfDay=2
perHourSal=100
ranCheck=$((RANDOM%3))

if [ $ranCheck -eq $fullDay ]
then
	echo "Employee is present full day today"
elif [ $ranCheck -eq $halfDay ]
then
	echo "Employee is present half day today"
else
	echo "Employee is absent today"
fi
