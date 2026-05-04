echo "Executable files:"
for file in *
do
    if [ -f "$file" ] && [ -x "$file" ]; then
        echo "$file"
    fi
done

echo
echo "Directories:"
for file in *
do
    if [ -d "$file" ]; then
        echo "$file"
    fi
done

echo
echo "Zero size files:"
for file in *
do
    if [ -f "$file" ] && [ ! -s "$file" ]; then
        echo "$file"
    fi
done
