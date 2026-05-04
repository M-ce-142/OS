echo "Enter value of n:"
read n

count=0
num=2

while [ $count -lt $n ]
do
    i=2
    flag=1

    while [ $i -le `expr $num / 2` ]
    do
        rem=`expr $num % $i`

        if [ $rem -eq 0 ]
        then
            flag=0
            break
        fi

        i=`expr $i + 1`
    done

    if [ $flag -eq 1 ]
    then
        echo $num
        count=`expr $count + 1`
    fi

    num=`expr $num + 1`
done
