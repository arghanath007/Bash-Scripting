Source Link -> https://www.youtube.com/watch?v=e7BufAVwDiM

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
