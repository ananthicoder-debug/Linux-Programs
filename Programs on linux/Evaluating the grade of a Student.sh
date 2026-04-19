echo "Enter student name:"
read name
echo "Enter roll number"
read roll
echo "Enter marks"
read marks
if [ $marks -gt 90 ];then
   grade="A"
elif [ $marks -gt 80 ] && [ $marks -lt 90 ];then
   grade="B"
elif [ $marks -gt 70]  && [ $marks -lt 80 ];then
   grade="C"
elif [ $marks -gt 60 ] && [ $marks -lt 70 ];then
   grade="D"
else
   grade="Fail"
fi
echo "Name:$name"
echo "Roll number:$roll"
echo "Marks:$marks"
echo "Grade:$grade"
