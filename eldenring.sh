#! /bin/bash



# echo "Hey, do you like this game?(y/n)"
# read like


# if [[ $like == 'y' ]]
# then
#     echo "You are a good person"
# else
#     echo "You are a bad person"
# fi

echo "Choose your starting class. Classes:

1) Warrior
2) Magic
3) Prophet"

read class

case $class in
    1)
        type="Warrior"
        hp=120
        attack=50
        ;;
    2)
        type="Magic"
        hp=100
        attack=40
        ;;

    3)
        type="Prophet"
        hp=80
        attack=30
        ;;
esac

sleep 2
echo "You are a $type class. Your hp is $hp. Your attack is $attack"

sleep 3
echo "You Died!!!!"

sleep 2
echo "Your First beast approaches. Prepare to battle. Pick a number between 0-1(0/1)"
read tarnished

beast=$(( $RANDOM % 2 ))
# echo $beast

if [[ $beast == $tarnished && 47 > 23 ]]
then
    echo "Demon Vanquished"
else
    echo "You Died!!!! Restart the game"
    exit 1
fi

sleep 3

echo "Boss Battle. Get scared. It's margit and you have to pick a number between 0-9"
read tarnished

margrit=$(( $RANDOM % 10 ))
# echo $margrit


if [[ $margrit == $tarnished || $tarnished == "coffee" ]]
then
    echo "Demon Vanquished"
elif [[ $USER == "root" ]]
then
    echo "Root is always the winner"
else
    echo "You Died!!!!"
fi

