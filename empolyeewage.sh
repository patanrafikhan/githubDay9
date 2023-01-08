#!/bin/bash -x

function getWorkHours() {
i=0
days=0
partDays=0
workHr=0
partWorkHr=0

while (( $i<20 && $workHr<100 && $partWorkHr<100 ))
do
check=$((RANDOM%2))
isPresent=1
partTime=$((RANDOM%2))
case $check in

	$isPresent) days=$(($days+1))
		workHr=$(($workHr+8))
		;;
esac
case $check in

	$partTime) partDays=$(($partDays+1))
		partWorkHr=$(($partWorkHr+8))
		;;
esac

i=$(($i+1))
done
}

getWorkHours

ratePrHr=20
totalWageEmp=$(($workHr*$days*$ratePrHr))
dailyWageEmp=$(($ratePrHr*$workHr))
echo "Employee worked for $days days"
echo "Total wage of employee is $totalWageEmp and daily wage of employee is $dailyWageEmp"

# Part time employee
totalWagePartEmp=$(($partDays*$partWorkHr*$ratePrHr))
partDailyWage=$(($ratePrHr*$partWorkHr))
echo "Part time employee worked for $partDays"
echo "Total wage of part Time employee is $totalWagePartEmp and daily wage is $partDailyWage
