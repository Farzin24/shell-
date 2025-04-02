echo "Enter the first mark:"
read mark1

echo "Enter the second mark:"
read mark2

echo "Enter the third mark:"
read mark3


average=$(( (mark1 + mark2 + mark3) / 3 ))


echo "The average mark is: $average"

if [ $average -ge 90 ]; then
    grade="A"
elif [ $average -ge 80 ]; then
    grade="B"
elif [ $average -ge 60 ]; then
    grade="C"
elif [ $average -ge 40 ]; then
    grade="D"
else
    grade="E"
fi

echo "The grade is: $grade"


