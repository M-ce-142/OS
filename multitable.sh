echo "Enter a number:"
read num

i=1

while [ $i -le 10 ]
do
    result=`expr $num \* $i`
    echo "$num x $i = $result"
    i=`expr $i + 1`
done
