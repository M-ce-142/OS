echo "Enter date (dd-mm-yyyy):"
read date

dd=`echo $date | cut -d'-' -f1`
mm=`echo $date | cut -d'-' -f2`
yy=`echo $date | cut -d'-' -f3`

# Format check
if [ ${#dd} -ne 2 ] || [ ${#mm} -ne 2 ] || [ ${#yy} -ne 4 ]; then
    echo "Invalid format"
    exit
fi

# Numeric check
echo $dd | grep -q '^[0-9][0-9]*$' || { echo "Invalid date"; exit; }
echo $mm | grep -q '^[0-9][0-9]*$' || { echo "Invalid date"; exit; }
echo $yy | grep -q '^[0-9][0-9]*$' || { echo "Invalid date"; exit; }

# Month check
if [ $mm -lt 1 ] || [ $mm -gt 12 ]; then
    echo "Invalid month"
    exit
fi

# Days in month
case $mm in
    01|03|05|07|08|10|12) max=31 ;;
    04|06|09|11) max=30 ;;
    02)
        if [ `expr $yy % 4` -eq 0 ]; then
            max=29
        else
            max=28
        fi
        ;;
esac

# Day check
if [ $dd -lt 1 ] || [ $dd -gt $max ]; then
    echo "Invalid day"
else
    echo "Valid date"
fi
