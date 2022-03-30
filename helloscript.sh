#! /bin/bash

# echo "hello world" > output.txt

# cat >> file.txt    # Press ctrl + d to come out of the file in the terminal.

: '
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands
This are all commands'

count=9

# if [ $count -eq 10 ]
# then
#     echo "the condition is meet"
# fi

# if [ $count -eq 9 ]
# then
#     echo "the condition is meet"

# else
#     echo "the condition is not meet"
# fi

if [ $count -lt 9 ]
then
    echo "the condition is meet"

elif (($count <=9))
then 
    echo "the condition is equally true"

else
    echo "the condition is not meet"
fi


