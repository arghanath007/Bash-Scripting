Source Link -> https://www.youtube.com/watch?v=e7BufAVwDiM(1hr 54mins into the video )

**"\*" or just asterisks in Bash means a wildcard that stands for any string of any size.**

**echo "hello world" > output.txt**

> Outputs the "hello world" to the file(output.txt)

**cat >> file.txt**

> To append the content of the file to the file instead of overriding it.

: 'Some lines of code'

> This a multi line comment. '#' is used for single line comment.

# Conditional Statements

    if [ $count -eq 9 ]
    then
        echo "the condition is meet"

    else
        echo "the condition is not meet"
    fi

> 'eq' means equals to. 'ne' means not equal to. 'gt' means greater than. 'ge' means greater than or equal to. 'lt' means less than. 'le' means less than or equal to.

**elif (($count <=9))**

> We can write the condition like this as well.

    if [ $count -lt 9 ]
    then
        echo "the condition is meet"

    elif (($count <=9))
    then
        echo "the condition is equally true"

    else
        echo "the condition is not meet"
    fi

## AND(&&) condition

    # if [ "$age" -gt 18 ] && [ "$age" -lt 35 ]
    # if [[ "$age" -gt 18 && "$age" -lt 35 ]] # Another way to write the above condition.
    if [ "$age" -gt 18 -a "$age" -lt 35 ] # '-a' is the AND operator.
    then
        echo "The person is a zoomer"

    elif [ "$age" -le 10 ]
    then
        echo "The person is a baby"

    else
        echo "The person is a boomer"

    fi

## OR(||) condition

    # if [ "$age" -gt 18 ] || [ "$age" -lt 35 ]
    # if [[ "$age" -gt 18 || "$age" -lt 35 ]] # Another way to write the above condition.
    if [ "$age" -gt 18 -o "$age" -lt 35 ] # '-o' is the OR operator.
    then
        echo "The person is a zoomer"

    elif [ "$age" -le 10 ]
    then
        echo "The person is a baby"

    else
        echo "The person is a boomer"

    fi

## Case Statements

> Similar to switch statements in other languages like c and c++.
> Link -> https://www.youtube.com/watch?v=DA-Ilf15_r8

## While loop

number=1

    while [ $number -le 10 ]
    do
        echo "$number"
        number=$(( number+1 ))
    done

## Until Loop

> This loop will run until the condition is true.

    until [ $number -ge 10 ]
    do
        echo "$number"
        number=$((number+2))

    done

## For Loop

    for (( i=0; i<5;i++ ))
    do
        echo $i
    done

> Another Way.

    for i in {0..20..5}
    do
        echo $i
    done

## Break and Continue

### Break

    for ((i=0; i<=10;i++))
    do
        if [ $i -gt 5 ]
        then
            break
        fi
        echo $i
    done

### Continue

    for ((i=0; i<=10;i++))
    do
        if [ $i -eq 5 ] || [ $i -eq 9 ]
        then
            continue
        fi
        echo $i
    done

## Arrays

args=('$@')
echo $@

args=("$@")

> '$@' is used to store unlimited inputs. 'args' is the array name.

echo $@

> This means that all of the elements which were inputted will be printed.

echo $#

> This prints out the length of the array.

## Stdin(Script input)

> Reading a file. While executing the script, we have to specify the file name or the path of the file, from which the script will read. Example: ./helloscript.sh Bash_commands.md

    while read line
    do
        echo $line
    done  < "${1:-/dev/stdin}"

## Stdout(Script output) and Stderr(Script error)

**ls -al 1> standard_output.txt 2> standard_error.txt**

> If the command is correct then the output of the command will be stored in 'standard_output.txt' otherwise the error will be stored in 'standard_error.txt'.

**ls al 1> standard_output_1.txt 2> standard_error_1.txt**

> There is an error in the above script, so no nothing will be saved in the 'standard_output_1.txt' file and the error will be stored in 'standard_error_1.txt'.

### shortcuts

ls -al >output.txt 2>&1

ls +al >& output.txt

> This both will store the standard output or the standard error in the 'output.txt' file. The 2nd script command is a shortcut of the 1st one.

## Send output from one script to another script

### exportScript.sh

MESSAGE="This is the exported message"
export MESSAGE
./inportScript.sh

### inportScript.sh

echo "The imported message is: $MESSAGE"

## Equals to(==)

    echo "Enter 1st String"
    read str1

    echo "Enter 2nd String"
    read str2

    if [ "$str1" == "$str2" ]
    then
        echo "Matching Strings"

    else
        echo "Not Matching Strings"
    fi

## Greater than(\>) and Less than(\<)

    echo "Enter 1st String"
    read str1

    echo "Enter 2nd String"
    read str2

    if [ $str1 \< $str2 ]
    then
        echo "$str1 is smaller than $str2"

    elif [ $str1 \> $str2 ]
    then
        echo "$str1 is greater than $str2"

    else
        echo "$str1 is equal to $str2"

    fi

## Concatenation

    echo "Enter 1st String"
    read str1

    echo "Enter 2nd String"
    read str2

    echo "$str1 $str2"

## Upper and Lower Case

### Output -> 'aRGHA', it converts the first letter of the string to lower case.

echo ${foo,}

### Output -> 'argha', it converts the whole string to lower case.

echo ${foo,,}

### Output -> 'Argha', it converts the first letter of the string to upper case.

echo ${str1^}

### Output -> 'ARGHA', it converts the whole string to upper case.

echo ${str1^^}

## Numbers and Arithmetic

echo $(( n1 + n2 ))
echo $(( n1 - n2 ))
echo $(( n1 / n2 ))
echo $(( n2 / n1 ))
echo $(( n1 % n2 ))
echo $(( n2 % n1 ))
echo $(( n1 \* n2 )) #multiplication

### Alternative Way

echo $(expr $n1 + $n2 )
echo $(expr $n1 % $n2 )
echo $(expr $n1 \* $n2 ) # expr doesn't recognize the multiplication operator or the Asterisk.

## Converting Hex number to decimal number

echo "Enter Hex Number of choice"
read Hex

echo -n "The decimal value of $Hex is: "

echo "obase=10; ibase=16; $Hex" | bc

> 'obase' -> Output Base.
> 'ibase' -> Input Base.
> 'bc' -> Bash Calculator. We are using that here to convert.

## 'Declare' command

> Bash is not a strongly typed language.

### creating read only file

declare -r pwd=./password

echo $pwd

pwd=./changed_password.txt

echo $pwd

### Searching

declare -p myvariable -> 'myvariable' is the name of the variable to be searched.

## Arrays

### Declaring

car=("AUDI" "BMW" "ASTON MARTIN" "TATA")

echo "${car[@]}"

> '@' prints out the whole array.

### Printing

echo "${car[0]}"  "${car[2]}"

> Using indices to print out the elements of the array.

echo "${!car[@]}"

> This is printing out the indices of the array.

echo "${#car[@]}"

> Counts the values within the array.

## Function

    function printing()
    {
        echo $1 "$2 from the function $3 printing the $4 "
    }

    printing Hi, Calling and value



    function printing()
    {
        value='Within the function'
    }

    value='Outside the function'
    echo $value

    printing
    echo $value

## Files and Directory

    echo "Enter the directory to be checked: "
    read dic

    if [ -d $dic ]
    then
        echo "$dic exists"
    else
        mkdir $dic
        echo "$dic created"
    fi

> '-d' -> Checks if the directory name exists or not. Checking a directory exists if it doesn't exist then it will create it otherwise it will say that the directory exists.

### Checking and creating files

    echo "Enter the file name to check "
    read filename

    if [ -f $filename ]
    then
        echo "$filename exists"

    else
        touch $filename
        echo "$filename created"
    fi

> '-f' -> Checks if the filename exists or not. Checking a filename exists, if it doesn't exist then it will create it otherwise it will say that the filename exists.

### Appending to files

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

> '>>' -> Appends the content to the file. '>' -> Overwrites the content of the file.
