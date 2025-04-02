echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo "Enter the third number:"
read num3

if (( num1 >= num2 && num1 >= num3 )); then
  echo "The largest number is: $num1"
elif (( num2 >= num1 && num2 >= num3 )); then
  echo "The largest number is: $num2"
else
  echo "The largest number is: $num3"
fi


