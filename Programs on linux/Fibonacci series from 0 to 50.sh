a=0
b=1
echo "Fibonacci series between 0 and 50:"
while [ $a -le 50 ]; do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
echo

