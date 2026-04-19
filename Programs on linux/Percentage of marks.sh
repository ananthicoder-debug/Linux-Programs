echo "Enter five subject mark:"
read m1 m2 m3 m4 m5
total=$((m1+m2+m3+m4+m5))
percentage=$(echo "$total/5"|bc)
echo "total marks :$total out of 500"
echo "Percentage:$percentage%"
