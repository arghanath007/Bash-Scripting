# Bash Scripts

> They are just command line commands. Instead of running them one by one. We write a script and it runs automatically.

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

\*\*Remember this, when we are writing scripts or dealing with other's scripts. If the script doesn't execute with "./himom.sh"(./(file name of the script)) command, then it doesn't have the executable permission. We have to add the executable permission to the script by running **chmod +x himom.sh** command. Then we can execute the script with "./himom.sh" command.\*\*
