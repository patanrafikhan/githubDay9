#!/bin/bash -x

halfDay=1
fullDay=2
perHourSal=100

ranCheck=$((RANDOM%3))

case $ranCheck in
	$halfDay)
		empHour=4;;
	$fullDay)
		empHour=8;;
	*)
		empHour=0;;
esac
perDaySal=$(($empHour*$perHourSal))
echo "Todays salary is $perDaySal"
