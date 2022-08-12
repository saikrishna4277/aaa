
#!/bin/bash

hour=`date +%c | tr -s " " | cut -d " " -f4 | cut -d ":" -f1`   
day=`date +%A`  
mon=`date +%B`  
dte=`date +%d`  
year=`date +%Y`  
tf=`date +%r`    
if [ $hour -ge 5 -a $hour -lt 12 ]  
then
        echo -e "Good morning `whoami`, Have nice day!\nThis is $day $dte in $mon of $year ($tf)"
elif [ $hour -ge 12 -a $hour -le 13 ]   
then
        echo -e "Good noon `whoami`, Have nice day!\nThis is $day $dte in $mon of $year ($tf)"
elif [ $hour -ge 14 -a $hour -lt 17 ]  
then
        echo -e "Good afternoon `whoami`, Have nice day!\nThis is $day $dte in $mon of $year ($tf)"
elif [ $hour -ge 17 -a $hour -lt 21 ]   
then
        echo -e "Good evening `whoami`, Have nice day!\nThis is $day $dte in $mon of $year ($tf)"
elif [ $hour -ge 21 -o $hour -lt 5 ]   
then
        echo -e "Good night `whoami`, Have nice day!\nThis is $day $dte in $mon of $year ($tf)"
fi
