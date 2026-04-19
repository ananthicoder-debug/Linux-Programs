echo "Enter the radius of circle:"
read radius
area=$(echo "3.1415*$radius*$radius"|bc)
echo "The area of the circle is:$area"
