echo "Enter the first number (num1):"
read num1

echo "Enter the second number (num2):"
read num2

addition=$(( num1 + num2 ))
echo "Addition: $num1 + $num2 = $addition"

subtraction=$(( num1 - num2 ))
echo "Subtraction: $num1 - $num2 = $subtraction"

multiplication=$(( num1 * num2 ))
echo "Multiplication: $num1 * $num2 = $multiplication"

division=$(( num1 / num2 ))
echo "Division: $num1 / $num2 = $division"
