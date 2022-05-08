#! /bin/bash

# echo "Enter your name"
# read name

# echo "Enter your age"
# read age

# echo "Hello $name, you are $age years old"
# echo "-------------------------------------"
# echo $RANDOM
# echo $SHELL
# echo $USER
# echo $RANDOM
# echo $PWD
# echo $HOSTNAME
# echo $RANDOM
# # twitter="Elon Musk"
# echo "The owner of twitter is $twitter"
# echo "I have $addiction addiction"


echo "Enter your name"
read name


echo "Enter your age"
read age


getrich=$((( $RANDOM % 15) + $age ))
echo "$name, you will get rich in $getrich years old"


