echo "Enter marks of Subject 1:"
read s1
echo "Enter marks of Subject 2:"
read s2
echo "Enter marks of Subject 3:"
read s3

total=`expr $s1 + $s2 + $s3`
percentage=`expr $total / 3`

echo "Total Marks = $total"
echo "Percentage = $percentage %"

if [ $percentage -ge 60 ]
then
    echo "Class Obtained: First Class"
elif [ $percentage -ge 50 ]
then
    echo "Class Obtained: Second Class"
elif [ $percentage -ge 40 ]
then
    echo "Class Obtained: Third Class"
else
    echo "Class Obtained: Fail"
fi
