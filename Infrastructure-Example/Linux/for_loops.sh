#! /bin/bash

states=( 'california' 'alaska' 'oregon' 'washington' 'idaho' )

for states in ${states[@]};
do
	if [ $states = 'washington' ]
	then
		echo "Washington is the best!"
	else
		echo "I'm not fond of Washington"
	fi
done


for number in {0..9};
do
	if [ $number = 3 ] || [ $number = 5 ] || [ $number = 7 ]
	then
		echo $number
	fi
done
