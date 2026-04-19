echo "Enter 3 numbers"
read a b c
if [ $a -ge $b ] && [ $a -ge $c ];then
   echo "$a is biggest"
elif [ $b -ge $a ] && [ $b -ge $c ];then
   echo "$b is biggest"
else
   echo "$c is biggest"
fi
