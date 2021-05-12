#!/bin/sh

# test command if exist
echo "=====command_exists====="
command_exists () {
    command -v "$1" >/dev/null 2>&1
}

if command_exists 'abc' ; then # if command exist
		echo "command 'abc' exist"
else                           # if command doesn't exist
		echo "command 'abc' doesn't exist"
fi

if command_exists 'grep' ; then  # if command exist
		echo "command 'grep' exist"
else                           # if command doesn't exist
		echo "command 'grep' doesn't exist"
fi



# test variable if null or empty
echo "\n=====test variable if null====="
foo=""
if [ -z $foo ]; then # test variable if null
    echo "foo is empty"
fi

foo="foo"
if [ $foo ]; then # test variable if null
    echo "foo is $foo"
fi


# read .env variable
echo "\n=====read_var====="
read_var () {
    echo $(grep -v '^#' .env | grep -e "$1" | sed -e 's/.*=//')
}

var1=$(read_var "var1")
var2=$(read_var "var2")
echo "var1=${var1}"
echo "var2=${var2}"
