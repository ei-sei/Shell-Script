#echo "Enter Two numbers"
#check input for 2 variables


#check if variables are numbers
echo enter first number
read m
if ! [[ "$m" =~ ^[0-9]+$ ]]
    then
        echo "Sorry integers only"
        
        echo enter again
        read m
fi

echo enter second number
read n
if ! [[ "$n" =~ ^[0-9]+$ ]]
    then
        echo "Sorry integers only"
        
        echo enter again
        read n
fi

#checking GCD: if the two variable are the same number, GCD check will skip to done
while [ $m != $n ]

#loop for checking GCD until both are 0
do

    if [ $m -gt $n ]
    then
        m=`expr $m - $n`
    else
        n=`expr $n - $m`
    fi
    
done

#prints gcd
echo gcd = $n

