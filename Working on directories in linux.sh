1.Create a directory "CSE".
command:mkdir cse

change your working directory to"CSE"and display
command :cd cse

where you are working now?
command: pwd

[24bcs004@mepcolinux linux]$mkdir cse
[24bcs004@mepcolinux linux]$cd cse
[24bcs004@mepcolinux cse]$pwd
/run/media/root/Data/student/cse/ug/be2024/a/24bcs004/linux/linux/cse

#Create a 3 empty files staff,faculty,stud_rep,
command: touch staff faculty stud_rep

add necessary information(only name) to corresponding file
command:echo "name" > staff
        echo "name">faculty
         echo "name">stud_rep

[24bcs004@mepcolinux cse]$touch staff faculty stud_rep
[24bcs004@mepcolinux cse]$ls
ex4.txt  faculty  staff  stud_rep
[24bcs004@mepcolinux cse]$echo "jenni" >staff
[24bcs004@mepcolinux cse]$echo "james" >faculty
[24bcs004@mepcolinux cse]$echo "reena" >stud_rep
[24bcs004@mepcolinux cse]$cat staff
jenni
[24bcs004@mepcolinux cse]$cat faculty
james
[24bcs004@mepcolinux cse]$cat stud_rep
reena

Merge the content of the file staff and faculty and store it in a file "S&f"
command:cat staff faculty>"S&F"

then change the name of the file "f&S"
command:mv "S&F" "F&S"

[24bcs004@mepcolinux cse]$cat staff faculty>"S&F"
[24bcs004@mepcolinux cse]$cat "S&F"
jenni
james
[24bcs004@mepcolinux cse]$mv "S&F" "F&S"
[24bcs004@mepcolinux cse]$cat "F&S"
jenni
james

Sort the f&S file content and store the result in the file "new f&s"
command:sort "F&S" > "new F&S"

[24bcs004@mepcolinux cse]$sort "F&S">"new F&S"
[24bcs004@mepcolinux cse]$cat "new F&S"
james
jenni

2.Create sub directory IBECSE and create a "Namelist" which contain your friends name[min 10 names]

a)Create a sub directory IBECSE and create a file "Namelist" which contain your classmates name[min 10 names]
command:mkdir IBCSE
        cd IBCSE
        touch namelist
        echo"shivani,uma,vis.......10 names">namelist
s004@mepcolinux linux]$vi ex4.txt
[24bcs004@mepcolinux linux]$mkdir IBCSE

[24bcs004@mepcolinux linux]$cd IBCSE

[24bcs004@mepcolinux IBCSE]$touch namelist

[24bcs004@mepcolinux IBCSE]$echo "shivani,deeks,sri,rani,vis,uma,anu,bala,iswariya,anna"
shivani,deeks,sri,rani,vis,uma,anu,bala,iswariya,anna

[24bcs004@mepcolinux IBCSE]$echo "shivani,deeks,sri,rani,vis,uma,anu,bala,iswariya,anna">namelist
[24bcs004@mepcolinux IBCSE]$cat namelist
shivani,deeks,sri,rani,vis,uma,anu,bala,iswariya,anna


b)Move the file namelist to the directory IBECSE
command:mv namelist IBCSE

[24bcs004@mepcolinux IBCSE]$mv namelist IBCSE
[24bcs004@mepcolinux IBCSE]$cat IBCSE
shivani,deeks,sri,rani,vis,uma,anu,bala,iswariya,anna

c)In dir IBECSE,create a file marklist which contains the information about atleast 10 studs in the fololowing format(4
fields seperated by a tab)
           NAME  ROLL NO   GENDER  MARK
           //don't include the header
           aruna 10bcs001  female   99
command:echo -e "aruna\t10bcs005\tfemale\t99......upto 10 students">MARKLIST

[24bcs004@mepcolinux linux]$echo -e "Aruna\t10bcs001\tfemale\t99\nAria\t10bcs002\tfemale\t88\nArjun\t10bcs054\tmale\t44\nDas\t10bcs008\tmale\t96\n Aravind\t10bcs024\tmale\t66\nShree\t10bcs012\tfemale\t76\nViswaja\t10bcs029\tfemale\t56\nDinesh\t10bcs006\tmale\t78\nUma\t10bcs009\tfemale\t100\nDeeks\t10bcs072\tmale\t67">IBCSE/MARKLIST

[24bcs004@mepcolinux IBCSE]$cat MARKLIST
Aruna   10bcs001        female  99
Aria    10bcs002        female  88
Arjun   10bcs054        male    44
Das    10bcs008        male    96
Aravind 10bcs024        male    66
Shree   10bcs012        female  76
Viswaja 10bcs029        female  56
Dinesh  10bcs006        male    78
Uma     10bcs009        female  100
Deeks   10bcs072        male    67

d)Create two empty files malelist and femalelist.Extract the studs details from marklist to store the male and female studs details in coressponding file.Cut the gender field from the file malelist and femalelist.Now convert the content of malelist in uppercase
command:touch malelist femalelist
        grep "Male" MARKLIST|cut -f 1,2,4>malelist
        grep "Female"MARKLIST|cut -f 1,2,4>femalelist
        tr "a-z" "A-Z" <malelist>temp &a mv temp malelist

[24bcs004@mepcolinux IBCSE]touch malelist femalelist[

[24bcs004@mepcolinux IBCSE]$grep "Male" MARKLIST |cut -f 1,2,4>malelist
[24bcs004@mepcolinux IBCSE]$cat malelist
Arjun   10bcs054        Male    44
Das     10bcs008        Male    96
Aravind 10bcs024        Male    66
Dinesh  10bcs006        Male    78
Deeks   10bcs072        Male    67

[24bcs004@mepcolinux IBCSE]$grep "Female" MARKLIST |cut -f 1,2,4>femalelist
[24bcs004@mepcolinux IBCSE]$cat femalelist
Aruna   10bcs001        Female  99
Aria    10bcs002        Female  88
Shree   10bcs012        Female  76
Viswaja 10bcs029        Female  56
Uma     10bcs009        Female  100

[24bcs004@mepcolinux IBCSE]$tr 'a-z' 'A-Z' <malelist>temp
[24bcs004@mepcolinux IBCSE]$mv temp malelist
[24bcs004@mepcolinux IBCSE]$cat malelist
ARJUN   10BCS054        MALE    44
DAS     10BCS008        MALE    96
ARAVIND 10BCS024        MALE    66
DINESH  10BCS006        MALE    78
DEEKS   10BCS072        MALE    67

e)Comeback to your parent directory .Create one hidden file "index" which contain the details about the contents of your
current directory and sub directory
command:ls -a>.index
[24bcs004@mepcolinux linux]$ls -a>.index
[24bcs004@mepcolinux linux]$ls
archieve.tar.gz  cse  dty  ex1.txt  ex2.prn  ex3.prn  ex3.txt  ex4.txt  exercise2.txt  fullindex  IBCSE  sample.txt
[24bcs004@mepcolinux linux]$cat index
cat: index: No such file or directory

f)Create one more file "full index" which contains the full details about the contents of your current directory
command:ls -l>fullindex

[24bcs004@mepcolinux linux]$ls -l>fullindex
[24bcs004@mepcolinux linux]$ls
archieve.tar.gz  cse  dty  ex1.txt  ex2.prn  ex3.prn  ex3.txt  ex4.txt  exercise2.txt  fullindex  IBCSE  sample.txt

[24bcs004@mepcolinux linux]$cat fullindex
total 52
-rw-r--r--. 1 24bcs004 cse-ug-2024a  179 Mar  3 15:23 archieve.tar.gz
drwxr-xr-x. 2 24bcs004 cse-ug-2024a 4096 Mar 17 14:47 cse
drwxr-xr-x. 2 24bcs004 cse-ug-2024a 4096 Mar  3 16:43 dty
-rw-r--r--. 1 24bcs004 cse-ug-2024a    0 Mar  3 15:18 ex1.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a 4443 Mar  3 16:04 ex2.prn
-rw-r--r--. 1 24bcs004 cse-ug-2024a 1804 Mar  3 16:31 ex3.prn
-rw-r--r--. 1 24bcs004 cse-ug-2024a 1618 Mar 10 14:24 ex3.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a 6240 Mar 24 15:24 ex4.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a 4251 Mar  3 16:01 exercise2.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a    0 Mar 24 15:26 fullindex
drwxr-xr-x. 3 24bcs004 cse-ug-2024a 4096 Mar 17 14:52 IBCSE
-rw-r--r--. 1 24bcs004 cse-ug-2024a   58 Mar  3 15:00 sample.txt

g)Change the fap mode of files given below as follows
                 1)full index  -read only
                 2)index(hidden file) -write only
command:chmod 400 fullindex
        chmod  200 .index

[24bcs004@mepcolinux linux]$chmod 400 fullindex
[24bcs004@mepcolinux linux]$chmod 200 .index
[24bcs004@mepcolinux linux]$cat fullindex
total 52
-rw-r--r--. 1 24bcs004 cse-ug-2024a  179 Mar  3 15:23 archieve.tar.gz
drwxr-xr-x. 2 24bcs004 cse-ug-2024a 4096 Mar 17 14:47 cse
drwxr-xr-x. 2 24bcs004 cse-ug-2024a 4096 Mar  3 16:43 dty
-rw-r--r--. 1 24bcs004 cse-ug-2024a    0 Mar  3 15:18 ex1.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a 4443 Mar  3 16:04 ex2.prn
-rw-r--r--. 1 24bcs004 cse-ug-2024a 1804 Mar  3 16:31 ex3.prn
-rw-r--r--. 1 24bcs004 cse-ug-2024a 1618 Mar 10 14:24 ex3.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a 6240 Mar 24 15:24 ex4.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a 4251 Mar  3 16:01 exercise2.txt
-rw-r--r--. 1 24bcs004 cse-ug-2024a    0 Mar 24 15:26 fullindex
drwxr-xr-x. 3 24bcs004 cse-ug-2024a 4096 Mar 17 14:52 IBCSE
-rw-r--r--. 1 24bcs004 cse-ug-2024a   58 Mar  3 15:00 sample.txt

h)Create two empty files type1 and type2.store the types of all file in your current directory to the file type1.
command:touch type1 touch2
        file *>type1

[24bcs004@mepcolinux linux]$touch type1 type2

[24bcs004@mepcolinux linux]$file *>type1
[24bcs004@mepcolinux linux]$cat type1
archieve.tar.gz: gzip compressed data, from Unix, last modified: Mon Mar  3 15:23:13 2025
cse:             directory
dty:             directory
ex1.txt:         empty
ex2.prn:         ASCII text
ex3.prn:         ASCII text
ex3.txt:         ASCII text
ex4.txt:         ASCII text, with very long lines
exercise2.txt:   ASCII text
fullindex:       ASCII text
IBCSE:           directory
sample.txt:      ASCII text
type1:           empty
type2:           empty


i)Copy the directory IBECSE to R2023CSE and delete the directory IBECSE
command: cp -r IBCSE R2023CSE
         rm -r IBCS

[24bcs004@mepcolinux linux]$cp -r IBCSE R2023CSE
[24bcs004@mepcolinux linux]$cat R2023CSE
cat: R2023CSE: Is a directory
[24bcs004@mepcolinux linux]$ls
archieve.tar.gz  dty      ex2.prn  ex3.txt  exercise2.txt  IBCSE     sample.txt  type2
cse

[24bcs004@mepcolinux linux]$rm -r IBCSE
[24bcs004@mepcolinux linux]$cd IBCSE
-cd bash:no such file or directory

j)Find the total number of students in marklist and find total number of studs in malelist and female list
command:wc -l MARKLIST
        wc -l  malelist
        wc  -l femalelist
24bcs004@mepcolinux linux]$vi ex4.txt

[24bcs004@mepcolinux linux]$wc -l MARKLIST
wc: MARKLIST: No such file or directory
[24bcs004@mepcolinux linux]$cd R2023CSE
[24bcs004@mepcolinux R2023CSE]$cd IBCSE
[24bcs004@mepcolinux IBCSE]$wc -l MARKLIST
11 MARKLIST
[24bcs004@mepcolinux IBCSE]$wc -l malelist
5 malelist
[24bcs004@mepcolinux IBCSE]$wc -l femalelist
5 femalelist

3.Create a directory "ex3",Change your working directory to "ex3"
command:mkdir EX3
        cd EX3
bcs004@mepcolinux IBCSE]$cd ..
[24bcs004@mepcolinux R2023CSE]$cd ..
[24bcs004@mepcolinux linux]$vi ex4.txt
[24bcs004@mepcolinux linux]$mkdir ex3
[24bcs004@mepcolinux linux]$cd ex3

a)Create 3 empty files marklist,namelist and stud_rep.Add necessary information ("marklist,mark only,name list -name only stud_rep-representstive name only )to corresponding file(minimum 15 details)
command:touch marklist namelist studrep

[24bcs004@mepcolinux ex3]$touch marklist namelist studrep
[24bcs004@mepcolinux ex3]$vi marklist
[24bcs004@mepcolinux ex3]$vi namelist
[24bcs004@mepcolinux ex3]$vi studrep

b)Merge the contents of file namelist and marklist and store it in a file detail 1,detail 2 in the following format
              a. detail 1  detail2
              b.arun 100     arun bala
             c.bala 98      100   98
command:paste -d" " namelist marklist>detail1
        paste -s -d namelist marklist>detail2

[24bcs004@mepcolinux ex3]$paste -d ' ' namelist marklist>detail1
[24bcs004@mepcolinux ex3]$cat detail1
ananthi 67
divya 89
sharon 45
preethi 67
uma 90
anu 89
aria 99
shivani 76
faizza 34
shiva 27
ram 81
raj 91
ravi 99
shree 93
sai 98

[24bcs004@mepcolinux ex3]$paste -s -d ' ' namelist marklist>detail2
[24bcs004@mepcolinux ex3]$cat detail2
ananthi divya sharon preethi uma anu aria shivani faizza shiva ram raj ravi shree sai
67 89 45 67 90 89 99 76 34 27 81 91 99 93 98


c)Copy the first 8 lines from detail 1 to the new file "file 1".Copy the last 4 lines from the "file1" to new file "file2"And finally store the contents of detail 1 from the line4 to the "file 3"
command:head -n 8 detail1>file1
        tail -n 4 detail1>file2
        sed -n 4p detail1>file3

67 89 45 67 90 89 99 76 34 27 81 91 99 93 98
[24bcs004@mepcolinux ex3]$head -n 8 detail1>file1
[24bcs004@mepcolinux ex3]$cat file1
ananthi 67
divya 89
sharon 45
preethi 67
uma 90
anu 89
aria 99
shivani 76
[24bcs004@mepcolinux ex3]$tail -n 4 detail1>file2
[24bcs004@mepcolinux ex3]$cat file2
ravi 99
shree 93
sai 98
ravi 99
shree 93
sai 98
[24bcs004@mepcolinux ex3]$sed -n 4p detail1>file3
[24bcs004@mepcolinux ex3]$cat file3
preethi 67

d)Display the contents of "file 3" along with the line number
command:cat -n file3
[24bcs004@mepcolinux ex3]$cat -n file3
     1  preethi 67

