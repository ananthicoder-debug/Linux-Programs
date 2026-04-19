[24bcs004@mepcolinux linux]$cat ex5.txt
1.Store the total number of files present in the particular directory using pipes?
Command:totalfiles=(find linux -type f|wc -l)

[24bcs004@mepcolinux ~]$ls
ex1  EX1  ex10  ex11  ex2  EX2  ex2.prn  ex3  EX3  ex4  EX4  ex5  EX5  ex6  ex7  ex8  ex9  linux  list  sem2lab
[24bcs004@mepcolinux ~]$cd linux
[24bcs004@mepcolinux linux]$cd linux
[24bcs004@mepcolinux linux]$ls
10000{print-bash}  copy       cse  ex1.txt  ex3      ex3.txt  ex4.txt  ex5.txt:wq     fullindex      R2023CSE    type1
archieve.tar.gz    countries  dty  ex2.prn  ex3.prn  ex4.prn  ex5.txt  exercise2.txt  playerdetails  sample.txt  type2
[24bcs004@mepcolinux ~]$find linux -type f |wc -l
26
Description:$(...) capytures the output and stores it in the variable totalfiles

2.Check whether the given date is "monday" or not?
Command: $date '+%A" | grep -i Tuesday && echo today is tuesday || echo today is not tuesday
[24bcs004@mepcolinux linux]$date '+%A' | grep -i tuesday && echo Today is tuesday || echo Today is not tuesday
Today is not tuesday
Description: -i : used for case insensitive

3.Create a file consisting of countries and corresponding continents.Display the countries whioch are in the continent    Africa.Sort the generated a first and convert them into lowercase.
Command:grep 'Africa' countries |sort|tr [:upper:] [:lower:]
[24bcs004@mepcolinux linux]$vi countries
[24bcs004@mepcolinux linux]$cat countries
Cricket player1  India        Asia
Cricket player2  Africa       Asia
Cricket player3  Africa       Asia
Cricket player4  West Indies  Europe
Cricket player5  Africa       Asia
Cricket player6  America      United states
Cricket player7  Africa       Asia
[24bcs004@mepcolinux linux]$grep 'Africa' countries |sort|tr[:upper:][:lower:]
[24bcs004@mepcolinux linux]$grep 'Africa' countries |sort|tr [:upper:] [:lower:]
cricket player2  africa       asia
cricket player3  africa       asia
cricket player5  africa       asia
cricket player7  africa       asia
Description:
tr: it is used for transforming .It consist of two strings.

4.Crate a file consisting of following details player name age country runs.
Dispay the total number of players who belongs to India.
Display the details of players who do not belongs to India.
Display the names of players who scored more than 10,000 runs in decreasing order.

[24bcs004@mepcolinux linux]$vi playerdetails
[24bcs004@mepcolinux linux]$grep 'India' playerdetails|wc -l
3
[24bcs004@mepcolinux linux]$grep -v 'Australia' playerdetails
Rahul  39  India  9928
Rohit  42  India  17000
John   27  Africa   9000
Simth  38  United states  20000
Malinga 45  Sri lanka   6000
Virat   39  India  7500
Michael 40  West Indies 12000
[24bcs004@mepcolinux linux]$awk '$4 >10000{print$1}' playerdetails |sort -r
Simth
Rohit
Michael
Malinga
[24bcs004@mepcolinux linux]$cat playerdetails
Rahul  39  India  9928
Rohit  42  India  17000
Steve  39  Australia  10000
John   27  Africa   9000
Simth  38  United states  20000
Malinga 45  Sri lanka  11000
Virat   39  India  7500
Michael 40  West Indies 12000
Description:
-v : Used to eliminate the word present in the line.
