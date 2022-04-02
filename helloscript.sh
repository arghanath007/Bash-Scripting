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

# count=9

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

# if [ $count -lt 9 ]
# then
#     echo "the condition is meet"

# elif (($count <=9))
# then 
#     echo "the condition is equally true"

# else
#     echo "the condition is not meet"
# fi

age=20


# if [ "$age" -gt 18 ] && [ "$age" -lt 35 ] 

# if [[ "$age" -gt 18 && "$age" -lt 35 ]] # Another way to write the above condition.

# if [ "$age" -gt 18 -a "$age" -lt 35 ] # '-a' is the AND operator.
# then
#     echo "The person is a zoomer"

# elif [ "$age" -le 10 ]
# then
#     echo "The person is a baby"

# else 
#     echo "The person is a boomer"

# fi


# if [ "$age" -gt 18 -o "$age" -lt 10 ] # '-a' is the AND operator.
# then
#     echo "The person is a zoomer"

# elif [ "$age" -le 10 ]
# then
#     echo "The person is a baby"

# else 
#     echo "The person is a boomer"

# fi


number=1

# while [ $number -le 10 ]
# do 
#     echo "$number"
#     number=$(( number+1 ))
# done


# until [ $number -ge 10 ]
# do
#     echo $number
#     number=$((number+2))

# done

# for (( i=0; i<5;i++ ))
# do
#     echo $i
# done

# for i in {0..20..5}
# do
#     echo $i
# done

# for ((i=0; i<=10;i++))
# do
#     if [ $i -gt 5 ]
#     then
#         break
#     fi
#     echo $i
# done

# for ((i=0; i<=10;i++))
# do
#     if [ $i -eq 5 ] || [ $i -eq 9 ]
#     then
#         continue
#     fi
#     echo $i
# done


# args=('$@')
# echo $@


# while read line
# do
#     echo $line
# done  < "${1:-/dev/stdin}"



# ls -al 1> standard_output.txt  2> standard_error.txt

# ls al 1> standard_output_1.txt  2> standard_error_1.txt

# ls -al >output.txt 2>&1

# ls +al >& output1.txt



# echo "Enter 1st String"
# read str1

# echo "Enter 2nd String"
# read str2

# if [ "$str1" == "$str2" ]
# then 
#     echo "Matching Strings"

# else 
#     echo "Not Matching Strings"
# fi


# echo "Enter 1st Number"
# read num1

# echo "Enter 2nd Number"
# read num2

# if [ $num1 == $num2 ]
# then 
#     echo "Matching Strings"

# else 
#     echo "Not Matching Strings"
# fi


# echo "Enter 1st String"
# read str1

# echo "Enter 2nd String"
# read str2

# if [ $str1 \< $str2 ]
# then 
#     echo "$str1 is smaller than $str2"

# elif [ $str1 \> $str2 ]
# then
#     echo "$str1 is greater than $str2"

# else
#     echo "$str1 is equal to $str2"

# fi


# echo "Enter 1st String"
# read str1

# echo "Enter 2nd String"
# read str2

# concat=$str1" "$str2

# echo $concat



# echo "Enter 1st String"
# read foo

# echo "Enter 1st String"
# read str1

# echo "Enter 2nd String"
# read str2

# echo ${str1^}
# echo ${str1^^}

# foo="$(tr '[:lower:]' '[:upper:]' <<< ${foo:0:1})${foo:1}"

# echo ${foo,}
# echo ${foo,,}

# echo ${str2^}
# echo ${str2^^}


# echo 21+31

n1=20
n2=30

# echo $(( n1 + n2 ))
# echo $(( n1 - n2 ))
# echo $(( n1 / n2 ))
# echo $(( n2 / n1 ))
# echo $(( n1 % n2 ))
# echo $(( n2 % n1 ))
# echo $(( n1 * n2 ))


# echo $(expr $n1 + $n2 )
# echo $(expr $n1 % $n2 )
# echo $(expr $n1 \* $n2 )


# echo "Enter Hex Number of choice"
# read Hex

# echo -n "The decimal value of $Hex is: "

# echo "obase=10; ibase=16; $Hex" | bc


# declare -r pwd=./password

# echo $pwd

# pwd=./changed_password.txt

# echo $pwd


# car=("AUDI" "BUGATI" "BMW" "ASTON MARTIN" "TATA")

# echo "${car[@]}"

# echo "${car[0]}"  "${car[2]}"

# echo "${!car[@]}"

# echo "${#car[@]}" 


# function printing()
# {
#     echo $1 "$2 from the function $3 printing the $4 "
# }

# printing Hi, Calling and value



# function printing()
# {
#     value='Within the function'
# }

# value='Outside the function'
# echo $value

# printing
# echo $value



# echo "Enter the directory to be checked: "
# read dic

# if [ -d $dic ]
# then
#     echo "$dic exists"
# else
#     mkdir $dic
#     echo "$dic created"
# fi


# echo "Enter the file name to check "
# read filename

# if [ -f $filename ]
# then 
#     echo "$filename exists"

# else
#     touch $filename
#     echo "$filename created"
# fi


echo "Enter the file name where to append the content: "
read filename

echo "Enter the content to append : "
read content

if [ -f $filename ]
then 
    echo "$content" >> $filename  

else
    touch $filename
    echo "$content" >> $filename 
    echo "$filename created and the content was appended to $filename"
fi















