#!bin/bash

#Variables
ARCH=$(uname -a)
PCPU=$(grep "physical id" /proc/cpuinfo | uniq | wc -l)
VCPU=$(grep "processor" /proc/cpuinfo | uniq | wc -l)
F_RAM=$(free -m | grep "Mem:" | awk '{print $2}')
U_RAM=$(free -m | grep "Mem:" | awk '{print $3}')
P_RAM=$(free -m | grep "Mem:" | awk '{printf("%.2f"), $3/$2*100}')
F_DISK=$(df -Bg | grep "/dev/" | grep -v "/boot" | awk '{f += $2} END {print f}')
U_DISK=$(df -Bm | grep "/dev/" | grep -v "/boot" | awk '{u += $3} END {print u}')
P_DISK=$(df -Bm | grep "/dev/" | grep -v "/boot" | awk '{u += $3} {f+= $2} END {printf("%d"), u/f*100}')
CPU=$(top -bn1 | grep "Cpu" | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}')
BOOT=$(who -b | awk '$1 == "system" {print $3 " " $4}')
LVM=$(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
TCP=$(cat /proc/net/sockstat{,6} | awk '$1 == "TCP:" {print $3}')
M_TCP=$(if [ ${TCP} -eq 0 ]; then echo NOT ESTABLISHED; else echo ESTABLISHED; fi)
USER=$(users | wc -w)
IP=$(hostname -I)
MAC=$(ip link show | awk '$1 == "link/ether" {print $2}')
SUDO=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

wall "#Architecture: $ARCH
#CPU Physical: $PCPU
#vCPU : $VCPU
#Memory Usage: $U_RAM/$F_RAMMB ($P_RAM%)
#Disk Usage: $U_DISK/$F_DISKGb ($P_DISK%)
#CPU load: $CPU
#Last boot: $BOOT
#LVM use: $LVM
#Connections TCP: $TCP $M_TCP
#User log: $USER
#Network: IP $IP ($MAC)
#Sudo: $SUDO cmd"
