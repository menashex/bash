read X
read Y
read Z
if [ $Z -ge 1 ] && [ $Z -le 1000 ] && [ $Y -ge 1 ] && [ $Y -le 1000 ] && [ $X -ge 1 ] && [ $X -le 1000 ]
then 
	if [ $(expr $X '+' $Y) -gt $Z ] || [ $(expr $X '+' $Z) -gt $Y ] || [ $(expr $Y '+' $Z) -gt $X ]
	then
		if [ $X -eq $Y ] && [ $Y -eq $Z ]
		then
			echo EQUILATERAL

		elif [ $X -eq $Y ] || [ $X -eq $Z ] || [ $Y -eq $Z ]
		then
			echo ISOSCELES

		else
			echo SCALENE
		fi
	fi
fi
