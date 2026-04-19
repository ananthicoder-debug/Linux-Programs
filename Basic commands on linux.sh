1.Display current date and time
SYNTAX: $date
DESCRITION:display the current date and time
[24bcs004@mepcolinux linux]$date
Mon Feb 24 15:45:38 IST 2025
2.Display only month name for the current date
SYNTAX:$date +"%B"
       $date+"%a"
DESCRIPTION:Display only the month name of the current date
[24bcs004@mepcolinux linux]$date +"%B"
February
[24bcs004@mepcolinux linux]$date +"%a"
Mon
3.Display commands to create directories and files
SYNTAX:$mkdir filename
       touch filename/foldername
DESCRIPTION:A directory is created and file is opened
[24bcs004@mepcolinux linux]$mkdir dty
[24bcs004@mepcolinux linux]$ls
dty  ex1.txt
[24bcs004@mepcolinux linux]$vi ex1.txt
[24bcs004@mepcolinux linux]$ls
ex1.txt
4.Display the list of current users and your own user name
SYNTAX:$who
DESCRIPTION:Display the current user names
[24bcs004@mepcolinux linux]$who
24bbt014 pts/0        2025-02-24 15:37 (172.16.30.148)
23bad116 pts/1        2025-02-24 15:35 (172.16.10.58)
24bbt018 pts/2        2025-02-24 15:45
23bit104 pts/3        2025-02-24 15:54 (172.16.24.12)
[24bcs004@mepcolinux linux]$whoami
24bcs004
5.Display your own user name
SYNTAX:$who am i
DESCRIPTIN:Display the own username
[24bcs004@mepcolinux linux]$whoami
24bcs004
6.Display manual pages for date command page by page
SYNTAX:$man date
DESCRIPTION:Display mannual of date page by page
[24bcs004@mepcolinux linux]$man date
DATE(1)                                                                         User Commands                                                                         DATE(1)

NAME
       date - print or set the system date and time

SYNOPSIS
       date [OPTION]... [+FORMAT]
       date [-u|--utc|--universal] [MMDDhhmm[[CC]YY][.ss]]

DESCRIPTION
       Display the current time in the given FORMAT, or set the system date.

       Mandatory arguments to long options are mandatory for short options too.

       -d, --date=STRING
              display time described by STRING, not 'now'

       -f, --file=DATEFILE
              like --date once for each line of DATEFILE

       -I[TIMESPEC], --iso-8601[=TIMESPEC]
              output  date/time  in  ISO 8601 format.  TIMESPEC='date' for date only (the default), 'hours', 'minutes', 'seconds', or 'ns' for date and time to the indicated
              precision.
7.Print your name using echo on the terminal
SYNTAX:$echo name
DESCRIPTION:Prints name on the terminal using echo
[24bcs004@mepcolinux linux]$echo "ANANTHA VALLI"
ANANTHA VALLI
8.Display available disk space and disk usage
SYNTAX:$df[options][file]
       $du[options][file]
 DESCRIPTION:Display available space and disc
[24bcs004@mepcolinux linux]$df -h
Filesystem      Size  Used Avail Use% Mounted on
devtmpfs         32G     0   32G   0% /dev
tmpfs            32G   32K   32G   1% /dev/shm
tmpfs            32G  2.0G   30G   7% /run
tmpfs            32G     0   32G   0% /sys/fs/cgroup
[24bcs004@mepcolinux linux]$du -sh ex1.txt
4.0K    ex1.txt
9.Display your name of your system in the network using hostname command
SYNTAX:$hostname
DESCRIPTION:It is used to display the name of the system
[24bcs004mepcolinux linux]$hostname
mepcolinux.mepcoeng.ac.in
10.Work with the filter commands on the file date
SYNTAX:$grep[search name][file name]
DESCRIPTION:Display the name of file in sorted order
[24bcs004@mepcolinux linux]$grep "welcome" sample.txt
welcome
welcome to linux
[24bcs004@mepcolinux linux]$sort sample.txt
good morning
Hello World
welcome
welcome to linux
[24bcs004@mepcolinux linux]$uniq sample.txt
Hello World
welcome
good morning
welcome to linux
11.Create a compressed file archive using tar command
SYNTAX:$tar -cvzf compressed filename.tar.gz sourcefilename
DESCRIPTION:Create a compressed archieve file using tar
[24bcs004@mepcolinux linux]$ls
dty  ex1.txt  exercise2.txt  sample.txt
[24bcs004@mepcolinux linux]$tar -cvzf archive.tar.gz sample.txt
sample.txt
[24bcs004@mepcolinux linux]$ls
archieve.tar.gz  dty  ex1.txt  exercise2.txt  sample.txt
12.Extract files from tar archive
SYNTAX:$tar -xvzf destinationsource.tar.gz
DESCRIPTION:File is extracted from tar file
[24bcs004@mepcolinux linux]$tar -xvzf archive.tar.gz
sample.txt
[24bcs004@mepcolinux linux]$ls
archieve.tar.gz  dty  ex1.txt  exercise2.txt  sample.txt
