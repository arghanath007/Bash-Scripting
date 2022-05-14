Reference Link -> https://www.youtube.com/watch?v=TPRSJbtfK4M

# Bash Scripts

> They are just command line commands. Instead of running them one by one. We write a script and it runs automatically.

### .bashrc

> It is a file that is executed every time you log in.

**export twitter="Elon Musk"**

> To make an environment variable permanent, you have to add it to .bashrc or .zsh file, so that they are available. Creating custom system variables is a good way to make your life easier.

**echo $RANDOM**,**echo $SHELL**,**echo $USER**,**echo $RANDOM**,**echo $PWD**,**echo $HOSTNAME**,**echo $RANDOM**

> Build in system variables in linux.

## Nano

> This is a text editor in linux. Like Notepad for windows. It is not the only one but the easiest one.

> To save a script file in nano, press [Ctrl+X] and then it asks a few questions, press 'Y' or 'N', depending on needs.

#!/bin/bash -> With the **shebang(#!)**, we are telling the bash interpreter what scripting language we want to use for this script.

### echo

> To make our linux terminal speak or output something, we use the 'echo' command.

## Run a bash script

bash himom.sh(Name of the bash file we want to run/execute)

### chmod command

> It allows us to change the permissions for a file.

**chmod +x himom.sh**

> "+x" means to add the executable permission to that file(himom.sh).

**Remember this, when we are writing scripts or dealing with other's scripts. If the script doesn't execute with "./himom.sh"(./(file name of the script)) command, then it doesn't have the executable permission. We have to add the executable permission to the script by running **chmod +x himom.sh** command. Then we can execute the script with "./himom.sh" command.**

## ZSH

> This is a shell as well like bash but it is better. All of the ZSH commands will be applicable to bash shell as well when working on a server hosted in the cloud.

# Commands

1. date -> To get the current date and time.
2. cal -> To get the calendar of the month.
3. cal 2022 -> To get the whole calendar of the year.
4. whoami -> To get the name of the user.
5. man date -> To learn more about the command(date).
6. pwd -> Present Working Directory
7. ls -> List of content within that directory. List Directory content.

   _ls -a -> To view all the content. Including the hidden files._
   _ls -al -> To view more information about the contents in the directory._

8. cd -> To change the directory.

   _cd .. -> To go back to the previous directory._
   _cd ~ -> To go to the home directory._

9. mkdir -> To create a new directory.

   _mkdir new_directory_name -> To create a new directory with the name of new_directory_name._

10. tree -> To see the folder structure.
11. touch query.sql -> Creates a file.
12. mv query.sql examples -> Moves the file to the examples folder.
13. mv query.sql rename.sql -> Renames the file.
14. rm query.sql -> Deletes the file.

    _rm query-*.sql -> Deletes all the files which matches this pattern. '*' represents all_

15. echo "Select name,phone from customer;"> query.sql -> To write something in the file.
16. echo "Select name,phone from customer ORDER BY age;" >> query.sql -> To append something in the file.
17. cat query.sql -> To view the contents of the file.
18. less query.sql -> To paginate through files.
19. head query.sql -> To view the first 10 lines of the file.
20. tail query.sql -> To view the last 10 lines of the file.
21. cp query.sql query-copy.sql -> To copy a file.

    _cp query-\*.sql examples -> Copies all the files which matches this pattern to the Examples folder._

22. cp -r example example-copy -> To copy a folder.
23. find . -> To find anything

## grep -> Used to search text within files.

24. grep -rni "customer" . -> To search for a word in the current directory. 'i' for case insensitive.
25. history -> To view the history of the commands that I have typed on the shell.
26. history | grep "grep" -> To view the history of the commands that I have typed on the shell. '|' is used to pipe the output of one command to another. 'grep' is the command that we are using to filter the output from the 1st part of the command which is 'history'.

cat query.sql | grep "age" -> To filter out the results from the 1st command.
!! -> To get the previous command.

## sleep command

**sleep 1** -> To pause the script for 1 second.

## Variable

name="John"

echo "Good Morning $name"
sleep 1
echo "You're looking good today!! $name"
sleep 1
echo "Have a nice day $name"

> 'name' is the variable here.

## User Input

echo "What is your name?"
read name

echo "Good Morning $name"
sleep 1
echo "You're looking good today!! $name"
sleep 1
echo "Have a nice day $name"

> 'read' command is taking user input and storing it in the variable 'name'

## Arguments

### Positional Parameter/Argument

name=$1

echo "Good Morning $name"
sleep 1
echo "You're looking good today!! $name"
sleep 1
echo "Have a nice day $name"

> '$1' is called a Position Parameter. It is the first argument that we pass to the script.

name=$1
time=$2

echo "Good $2 $name"
sleep 1
echo "You're looking good today!! $name"
sleep 1
echo "Have a nice day $name"

> '$2' is called a Position Parameter. It is the second argument that we pass to the script.

