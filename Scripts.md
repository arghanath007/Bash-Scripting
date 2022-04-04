**Source Link -> https://www.youtube.com/watch?v=e7BufAVwDiM (Completed)**
**Source Link -> https://www.youtube.com/watch?v=q2z-MRoNbgM**

**"\*" or just asterisks in Bash means a wildcard that stands for any string of any size.**

**'#! /bin/bash'** -> This is the first line of the script. It tells the computer what shell to use. In this case, Bash.

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

## Reading from a file

    echo "Enter the file name where to append the content: "
    read filename

    if [ -f $filename ]
    then
        while IFS="" read -r line
        do
            echo $line
        done < $filename

    else
        echo "$filename does not exist"
    fi

> 'IFS' -> Internal Field Separator.
> 'read' -> Reads the content of the file.
> '-r' is the read flag.
> **'<' -> Reads the content of the file.**

## Deleting a file

    echo "Enter the file name to be deleted: "
    read filename

    if [ -f $filename ]
    then
        rm $filename
        echo "$filename was successfully deleted"
    else
        echo "$filename does not exist"
    fi

> 'rm' -> Removes the file.

## Deleting a folder/directory

    echo "Enter the directory to be deleted: "
    read dir

    if [ -d $dir ]
    then
        rmdir $dir
        echo "$dir was successfully deleted"
    else
        echo "$dir does not exist"
    fi

> 'rmdir' -> Removes the directory.

## Select loop with case statements

    select language in Python Java Javascript C++
    do
        case $language in
        Python)
            echo "You have selected Python";;
        Java)
            echo "You have selected Java";;
        Javascript)
            echo "You have selected Javascript";;
        C++)
            echo "You have selected C++";;
        *)
            echo "ERROR!! Please select a valid option between 1-4 included";;
        esac
    done

> case statements are like switch cases. 'esac' is the end of the case statement. ';;' is the end of the case statement. '\*' or asterisk means is the default case.

## Waiting for user input

    echo "Press any key to terminal the script"

    while [ true ]
    do
        read -t 5 -n 1
    if [ $? = 0 ]
    then
        echo "Terminated the script"
        exit;
    else
        echo "Waiting for the user input"
    fi

# GREP Command

> 'grep' -> Searches for a pattern in a file. To search some text within a file.

## Searching text within a file using GREP command

    echo "Enter the filename: "
    read filename

    if [ -f $filename ]
    then
        echo "Enter the text to be searched: "
        read text
        grep -i -n -c $text $filename

    else
        echo "$filename does not exist"
    fi

> '-i' -> Case insensitive search. '-n' -> Prints the line number. By default 'grep' is a case sensitive search.
> '-c' -> Counts the number of occurrences of the pattern in the file.

    echo "Enter the filename: "
    read filename

    if [ -f $filename ]
    then
        echo "Enter the text to be searched: "
        read text
        grep -i -v -c $text $filename

    else
        echo "$filename does not exist"
    fi

> '-v' -> Prints the lines that do not match the pattern. '-c' -> Counts the number of occurrences of the pattern not being in the file as we have used '-v' flag before it.

# AWK scripting

> AWK (awk) is a domain-specific language designed for text processing and typically used as a data extraction and reporting tool. Like sed and grep, it is a filter, and is a standard feature of most Unix-like operating systems.

**Resource -> https://www.geeksforgeeks.org/awk-command-unixlinux-examples/**

    echo "Enter the filename: "
    read file

    if [ -f $file ]
    then
        awk '{print}' $file

    else
        echo "$file does not exist"
    fi

> '{print}' -> Prints the content of the file.

    echo "Enter the filename: "
    read file

    if [ -f $file ]
    then
        echo "Enter the text to be searched: "
        read text
        awk ' /'$text'/ {print}' $file

    else
        echo "$file does not exist"
    fi

<!-- ### Alternative

    echo "Enter the filename: "
    read file

    if [ -f $file ]
    then
        echo "Enter the text to be searched: "
        read text
        awk '{print $text}' $file

    else
        echo "$file does not exist"
    fi -->

> '$text' -> Searches for the text in the file.

    echo "Enter the filename: "
    read file

    if [ -f $file ]
    then
        awk '{print $5}' $file

    else
        echo "$file does not exist"
    fi

> '$5' -> Prints the 5th column/value in the file.

    echo "Enter the filename: "
    read file

    if [ -f $file ]
    then
        awk '{print $5,$8}' $file

    else
        echo "$file does not exist"
    fi

> '$5' and '$8' -> Prints the 5th and the 8th column/value in the file.

# Debugging Scripts

> 'set +x' -> Stops printing the commands and their arguments as they are executed.

**bash -x ./helloscript.sh** -> Command to debug a script.

> 'set -x' -> Prints the commands and their arguments as they are executed. Shows step by step procedure of the script.

**#! /bin/bash -x** -> If we put '-x' at the beginning of the script then it will print the commands and their arguments as they are executed as if we are debugging the script as the same time.
