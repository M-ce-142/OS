

echo "Enter the number of terms:"
read n

a=1
b=1
i=1

echo "Fibonacci Series:"

while [ $i -le $n ]
do
    echo -n "$a "

    temp=`expr $a + $b`
    a=$b
    b=$temp

    i=`expr $i + 1`
done

