 1.List the running process and display the process id for your terminal?
 Command:ps
 ps aux
Description: ps is used to list the process
 -a - selects all process on a terminal ,including those of others
 -u - information about the process

[24bcs004@mepcolinux linux]$ps
   PID TTY          TIME CMD
   198620 pts/7    00:00:00 bash
   200515 pts/7    00:00:00 ps
   [24bcs004@mepcolinux linux]$ps -aux
   USER        PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
   root          1  0.3  0.0 197684 10788 ?        Ss   Apr11  32:27 /usr/lib/systemd/systemd --switched-root --system --deserialize 22
   root          2  0.0  0.0      0     0 ?        S    Apr11   0:02 [kthreadd]
   root          4  0.0  0.0      0     0 ?        S<   Apr11   0:00 [kworker/0:0H]
   root          6  0.0  0.0      0     0 ?        S    Apr11   0:07 [ksoftirqd/0]
   root          7  0.0  0.0      0     0 ?        S    Apr11   0:01 [migration/0]
   root          8  0.0  0.0      0     0 ?        S    Apr11   0:00 [rcu_bh]
   root          9  0.0  0.0      0     0 ?        S    Apr11   9:18 [rcu_sched]
   root         10  0.0  0.0      0     0 ?        S<   Apr11   0:00 [lru-add-drain]
   root         11  0.0  0.0      0     0 ?        S    Apr11   0:02 [watchdog/0]
   root         12  0.0  0.0      0     0 ?        S    Apr11   0:02 [watchdog/1]
   root         13  0.0  0.0      0     0 ?        S    Apr11   0:00 [migration/1]
   root         14  0.0  0.0      0     0 ?        S    Apr11   0:04 [ksoftirqd/1]
   root         16  0.0  0.0      0     0 ?        S<   Apr11   0:00 [kworker/1:0H]
   root         17  0.0  0.0      0     0 ?        S    Apr11   0:02 [watchdog/2]
   root         18  0.0  0.0      0     0 ?        S    Apr11   0:00 [migration/2]
   root         19  0.0  0.0      0     0 ?        S    Apr11   0:01 [ksoftirqd/2]
   root         21  0.0  0.0      0     0 ?        S<   Apr11   0:00 [kworker/2:0H]
   root         22  0.0  0.0      0     0 ?        S    Apr11   0:02 [watchdog/3]
   root         23  0.0  0.0      0     0 ?        S    Apr11   0:00 [migration/3]

2.Dispay the CPU resource utilization for different process in a system
Command:top
top -n 5
Description:top is used to display dynamic real time information on about running process,system performance resource usage
-n -no of ilterations that the top command should run efore terminating

[24bcs004@mepcolinux linux]$top
top - 20:09:58 up 7 days,  2:41, 21 users,  load average: 0.09, 0.12, 0.08
Tasks: 469 total,   1 running, 462 sleeping,   6 stopped,   0 zombie
%Cpu(s):  1.3 us,  0.8 sy,  0.0 ni, 97.9 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem : 65303720 total, 18149700 free,  5685428 used, 41468592 buff/cache
KiB Swap: 10485756 total, 10485756 free,        0 used. 58363816 avail Mem

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
   200539 24bcs004  20   0  162384   2564   1532 R   9.1  0.0   0:00.08 top
   9 root      20   0       0      0      0 S   4.5  0.0   9:18.18 rcu_sched
   1 root      20   0  197684  10788   4216 S   0.0  0.0  32:27.88 systemd
   2 root      20   0       0      0      0 S   0.0  0.0   0:02.92 kthreadd
   4 root       0 -20       0      0      0 S   0.0  0.0   0:00.00 kworker/0:0H
   6 root      20   0       0      0      0 S   0.0  0.0   0:07.89 ksoftirqd/0
   7 root      rt   0       0      0      0 S   0.0  0.0   0:01.57 migration/0
   8 root      20   0       0      0      0 S   0.0  0.0   0:00.00 rcu_bh
   10 root       0 -20       0      0      0 S   0.0  0.0   0:00.00 lru-add-drain
   11 root      rt   0       0      0      0 S   0.0  0.0   0:02.42 watchdog/0
   12 root      rt   0       0      0      0 S   0.0  0.0   0:02.32 watchdog/1
   13 root      rt   0       0      0      0 S   0.0  0.0   0:00.71 migration
3.kill the process using process id
command:kill id
kill -9 id
Description:-9 forcefully terminating the process with the specified process id
[24bcs004@172.16.16.200~]kill

4.Close any window using x kill
Command: xkill
Description:It is used to forcefully kill the running process
[24bcs004@172.16.16.200~]xkill

5.Check whether your connection to machine is healthy or not using PING?
Command:ping 127.0.0.1
ping -c 4 127.0.1
Description:-c 4 speciies the count of packets to be sent
In this case,it is set to 4,meaning that the ping command will send 4 ICMP.Echo request packets to the specified host

[24bcs004@mepcolinux linux]$ping 127.0.0.1
PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.049 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.057 ms
64 bytes from 127.0.0.1: icmp_seq=3 ttl=64 time=0.057 ms
64 bytes from 127.0.0.1: icmp_seq=4 ttl=64 time=0.056 ms
64 bytes from 127.0.0.1: icmp_seq=5 ttl=64 time=0.057 ms
64 bytes from 127.0.0.1: icmp_seq=6 ttl=64 time=0.060 ms
64 bytes from 127.0.0.1: icmp_seq=7 ttl=64 time=0.756 ms
64 bytes from 127.0.0.1: icmp_seq=8 ttl=64 time=0.065 ms
64 bytes from 127.0.0.1: icmp_seq=9 ttl=64 time=0.058 ms
64 bytes from 127.0.0.1: icmp_seq=10 ttl=64 time=0.056 ms
64 bytes from 127.0.0.1: icmp_seq=11 ttl=64 time=0.055 ms
64 bytes from 127.0.0.1: icmp_seq=12 ttl=64 time=0.056 ms

--- 127.0.0.1 ping statistics ---
12 packets transmitted, 12 received, 0% packet loss, time 11010ms
rtt min/avg/max/mdev = 0.049/0.115/0.756/0.193 ms
[24bcs004@mepcolinux linux]$ping -c 4 127.0.0.1
PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.067 ms
64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.057 ms
64 bytes from 127.0.0.1: icmp_seq=3 ttl=64 time=0.029 ms
64 bytes from 127.0.0.1: icmp_seq=4 ttl=64 time=0.035 ms

--- 127.0.0.1 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3002ms
rtt min/avg/max/mdev = 0.029/0.047/0.067/0.015 ms

6.Trace the number of hops taken to reach google.com from your computer?
Command:traceroute google.com
Description:The traceroute command is used to trace the route that packets take to reach a destination on a network
[24bcs004@mepcolinux linux]$traceroute google.com
traceroute to google.com (142.250.206.46), 30 hops max, 60 byte packets
1  gateway (172.16.16.1)  0.141 ms  0.109 ms  0.106 ms
2  172.24.246.94 (172.24.246.94)  1.316 ms  2.070 ms  1.279 ms
3  * * *
4  * * *
5  142.250.160.26 (142.250.160.26)  12.496 ms  12.744 ms  12.447 ms
6  * * *
7  142.250.228.220 (142.250.228.220)  9.533 ms 142.251.55.90 (142.251.55.90)  18.243 ms 216.239.56.70 (216.239.56.70)  16.781 ms
8  142.250.239.56 (142.250.239.56)  18.431 ms 216.239.54.197 (216.239.54.197)  14.000 ms 142.250.208.152 (142.250.208.152)  17.033 ms
9  172.253.75.15 (172.253.75.15)  9.533 ms 172.253.71.133 (172.253.71.133)  17.040 ms 142.251.229.251 (142.251.229.251)  18.864 ms
10  216.239.54.159 (216.239.54.159)  10.482 ms 216.239.54.197 (216.239.54.197)  14.002 ms pnmaaa-bf-in-f14.1e100.net (142.250.206.46)  12.926 ms

7.Display your computer's network address and mac address
Command: ip address show
ifconfig -a
Description:config -a is used to show the computer's mac address

[24bcs004@mepcolinux linux]$ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
inet 127.0.0.1/8 scope host lo
valid_lft forever preferred_lft forever
inet6 ::1/128 scope host
valid_lft forever preferred_lft forever
2: enp91s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
link/ether 04:32:01:d7:a9:c0 brd ff:ff:ff:ff:ff:ff
inet 172.16.16.200/19 brd 172.16.31.255 scope global noprefixroute enp91s0f0
valid_lft forever preferred_lft forever
inet6 fe80::fc47:d28d:ffbf:94b3/64 scope link noprefixroute
valid_lft forever preferred_lft forever
3: eno1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
link/ether 08:94:ef:70:65:69 brd ff:ff:ff:ff:ff:ff
4: enp91s0f1d1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
link/ether 04:32:01:d7:a9:c1 brd ff:ff:ff:ff:ff:ff
5: eno2: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
link/ether 08:94:ef:70:65:6a brd ff:ff:ff:ff:ff:ff
6: enp0s20f0u1u6: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
link/ether 0a:94:ef:70:5c:0a brd ff:ff:ff:ff:ff:ff
7: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default qlen 1000
link/ether 52:54:00:5a:24:b8 brd ff:ff:ff:ff:ff:ff
inet 192.168.122.1/24 brd 192.168.122.255 scope global virbr0
valid_lft forever preferred_lft forever
8: virbr0-nic: <BROADCAST,MULTICAST> mtu 1500 qdisc pfifo_fast master virbr0 state DOWN group default qlen 1000
link/ether 52:54:00:5a:24:b8 brd ff:ff:ff:ff:ff:ff

[24bcs004@mepcolinux linux]$ifconfig -a
eno1: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether 08:94:ef:70:65:69  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eno2: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether 08:94:ef:70:65:6a  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp0s20f0u1u6: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether 0a:94:ef:70:5c:0a  txqueuelen 1000  (Ethernet)
        RX packets 1118283  bytes 80667338 (76.9 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp91s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.16.16.200  netmask 255.255.224.0  broadcast 172.16.31.255
        inet6 fe80::fc47:d28d:ffbf:94b3  prefixlen 64  scopeid 0x20<link>
        ether 04:32:01:d7:a9:c0  txqueuelen 1000  (Ethernet)
        RX packets 160783152  bytes 106265641899 (98.9 GiB)
        RX errors 0  dropped 761875  overruns 0  frame 0
        TX packets 70193785  bytes 60337411977 (56.1 GiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp91s0f1d1: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether 04:32:01:d7:a9:c1  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 454475  bytes 663038611 (632.3 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 454475  bytes 663038611 (632.3 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

virbr0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        inet 192.168.122.1  netmask 255.255.255.0  broadcast 192.168.122.255
        ether 52:54:00:5a:24:b8  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

virbr0-nic: flags=4098<BROADCAST,MULTICAST>  mtu 1500
        ether 52:54:00:5a:24:b8  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

8.Connect to ftp server and display the list of iles present in it?
Command: ftp ftp_ip
Description:https - hypertext transfer protocol secure
ftp - file transfe protocol
sftp -safe file transfer protocol

[24bcs004@mepcolinux linux]$sftp 172.16.16.200
The authenticity of host '172.16.16.200 (172.16.16.200)' can't be established.
ECDSA key fingerprint is SHA256:YXzDG1ploj/B/R/1sfMbhMIuSvZoMhcniGW+/z6gJ4Q.
ECDSA key fingerprint is MD5:86:6a:a1:d8:f7:5f:0d:a1:91:a3:0d:d9:13:f6:2c:f7.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '172.16.16.200' (ECDSA) to the list of known hosts.

*************************************

     Welcome to MEPCOLINUX

*************************************
      Keep Your Password Secure
*************************************
