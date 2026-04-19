echo "Enter temperature in celsius:"
read celsius
f=$(echo "($celsius*9/5)+32"|bc)
echo "$celsius $c is equal to $f$F F"
