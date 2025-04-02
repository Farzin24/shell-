read -p "Enter a number: " num


read -p "Enter the range: " range

echo "Multiplication Table for $num:"
for ((i = 1; i <= range; i++)); do
    echo "$num x $i = $((num * i))"
done

