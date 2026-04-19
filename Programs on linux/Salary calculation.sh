echo "Enter the radius of circle:"
read radius
area=$(echo "3.1415*$radius*$radius"|bc)
echo "The area of the circle is:$area"
[24bcs004@mepcolinux linux]$sh ex11b.sh
Enter the radius of circle:
8
The area of the circle is:201.0560
[24bcs004@mepcolinux linux]$cat ex11c.sh
echo "Enter the basic pay(bp):"
read bp
da=$(echo "0.10*$bp"|bc)
hra=$(echo "0.10*$bp"|bc)
gross_salary=$(echo "$bp+$da+$hra+1000"|bc)
echo "Basic Pay:Rs$bp"
echo "Deareance Allowance(DA):Rs$da"
echo "House rent allowance(hra):Rs$hra"
echo "Fixed Allowance:Rs1000"
echo "Gross slary:Rs$gross_salary"
