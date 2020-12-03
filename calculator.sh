while [ $input="yes" ]
do

#gather inputs
echo "First number"
read num1

echo "Second number"
read num2

#Cases for different calculations
    PS3="Press 1 for Addition, 2 for subtraction, 3 for multiplication, 4 for division and 5 for modulus: "
    select math in Addition Subtraction Multiplication Division Modulus
    do
        case "$math" in
        Addition)

            result=`expr $num1 + $num2`
            echo Answer: $result
            break
        ;;
        Subtraction)

            result=`expr $num1 - $num2`
            echo Answer: $result
            break
        ;;
        Multiplication)

            result=`expr $num1 \* $num2`
            echo Answer: $result
            break
        ;;
        Division)

            result=$(expr "scale=2; $num1/$num2" | bc)

#if statement for illegal expression (0/0)
if [ $num1 = "0" -o $num2 = "0" ]
then
echo "Illegal operation"
else

		echo Answer = $result
fi

	break
        ;;

	Modulus)

		result=`expr $num1 % $num2`
		echo Answer: $result
		break
	;;

#If user does not pick an option between 1-5, jump to the start
        *)
            echo "Press any key to continue!!"
            break
        ;;
    esac
    done

#Any input will clear and restart the script
read -n 1 -r -s -p $'Press any key to continue...\n'
clear

done
