#! /bin/bash

# name="Mitchell"

# echo "What is your name?"
# read name

# name=$1
# time=$2

echo "Enter the location to check the weather"
read location

# sleep 5

# echo "The weather of the $location is $weather"

user=$(whoami)
date=$(date)
path=$(pwd)

publicIP=$(curl ifconfig.me)
privateIP=$(ip route get 1.2.3.4 | awk '{print $7}')
# weather=curl wttr.in/$location
joke=$(dadjoke)

# echo "Good $2 $name"
# sleep 1
# echo "You're looking good today!! $name"
# sleep 1
# echo "Have a nice day $name"

# sleep 2


echo "The current logged in user is $user. The location we are currently in is $path. BTW, today's date is $date"

sleep 2

echo "The public IP is $publicIP and the private IP is $privateIP"

sleep 2


sleep 2

echo "Some solid Dad Joke: $joke"