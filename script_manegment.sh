#!/bin/bash

#This is a script menu to manage enother scripts

option=6

while [ $option != 0 ]

do
 
echo What would you like to do?
echo For making a new script file press 1
echo For erasing scripts press 2
echo For moving script location press 3 
echo For editing scripts in vim press 4
echo For watching scripts list press 5 
echo For ending the session press 0
echo

read user_option

if [ $user_option -eq 1 ]
then
#For making a new script file
echo What will be the script name?

read script_name

touch $script_name.sh

echo "#!/bin/bash" >> $script_name.sh

chmod +x $script_name.sh

echo $script_name.sh has been created
echo 

fi

if [ $user_option -eq 2  ]
then
#For erasing scripts
echo What is the script name you want to erase?

ls -l *.sh

read erase_script

rm $erase_script

echo $erase_script has been erased
echo

fi

if [ $user_option -eq 3  ]
then
#For moving script location
echo Which script would you like to move '(please enter with .sh)'?

ls -l *.sh

read script_move

echo Where to?

read newlocation

cp $script_move $newlocation

echo $script_move has been moved to $newlocation
echo
fi

if [ $user_option -eq 4  ]
then
#For editing scripts in vim
echo Which script would you like to edit?

read edit_script

vim $edit_script
fi

#for scripts list
if [ $user_option -eq 5 ]
then
ls -l *.sh
echo
fi

option=$user_option
done
