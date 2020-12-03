#check if variables are numbers
echo enter a number
read m
if ! [[ "$m" =~ ^[0-9]+$ ]]
    then
        echo "Sorry integers only\n"

        echo enter again
        read m
fi

#binary
binary=`echo "obase=2;$m" | bc`
echo "Binary = $binary"

#octal
octal=`echo "obase=8;$m" | bc`
echo "Octal = $octal"

#hexadecimal
hexadecimal=`echo "obase=16;$m" | bc`
echo "Hexadecimal = $hexadecimal"


