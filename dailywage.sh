#!/bin/bash -x

#calculate Daily Employee Wage

fullDay=1
halfDay=2
perHourSal=20
ranCheck=$((RANDOM%3))

if [ $ranCheck -eq $fullDay ]
then
	empHour=8
elif [ $ranCheck -eq $halfDay ]
then
	empHour=4
else
	empHour=0
fi

daySal=$(( $perHourSal*$empHour ))
echo "Today's salary is $daySal"
