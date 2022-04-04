#! /bin/bash -x

echo "Enter the filename: "
read file

if [ -f $file ]
then
    awk '{print $5,$8}' $file

else
    echo "$file does not exist"
fi