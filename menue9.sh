#!/bin/bash

echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

while true; do
    echo "\nMenu:"
    echo "1. Sum"
    echo "2. Difference"
    echo "3. Product"
    echo "4. Quotient"
    echo "5. Exit"
    echo "Choose an option: "
    read choice

    case $choice in
        1) echo "Sum: $((num1 + num2))" ;;
        2) echo "Difference: $((num1 - num2))" ;;
        3) echo "Product: $((num1 * num2))" ;;
        4) if [ $num2 -ne 0 ]; then
               echo "Quotient: $((num1 / num2))"
           else
               echo "Error: Division by zero"
           fi ;;
        5) exit ;;
        *) echo "Invalid choice, please try again." ;;
    esac
done


