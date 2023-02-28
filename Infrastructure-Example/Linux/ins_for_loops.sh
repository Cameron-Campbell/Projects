#for <item> in <list>;
#do
#	<run this command>
#	<run this command>
#done

months=('january' 'february' 'march' 'april' 'may' 'june' 'july' 'august' 'september' 'october' 'november' 'december')
days=('mon' 'tues' 'wed' 'thurs' 'fri' 'sat' 'sun')

#for month in ${months[@]};
#do
#	echo $month
#done

#for days in ${days[@]};
#do
#	if [ $days = 'sun' ]
#	then 
#		echo "It is $days. Take it easy."
#	else
#		echo "It is $days. Get to work!"
#	fi
#done

#for file in $(ls);
#do
#	file $file
#done

for number in {0..10};
do
	if [ $number = 1 ] || [ $number = 4 ]
	then 
		echo $number
	fi
done
