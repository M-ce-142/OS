echo "Enter first file name:"
read f1

echo "Enter second file name:"
read f2

# Check if both files exist
if [ ! -f "$f1" ] || [ ! -f "$f2" ]; then
    echo "One or both files do not exist"
    exit
fi

# Compare files
cmp -s "$f1" "$f2"

if [ $? -eq 0 ]; then
    echo "Files are SAME"
else
    echo "Files are DIFFERENT"
fi
