#!/bin/bash
if [ -e /var/nfs/Tasks/pcInfo.txt ]; 
then 
rm -f /var/nfs/Tasks/pcInfo.txt 
echo "Файл удален" 
fi 

touch /var/nfs/Tasks/pcInfo.txt

echo "Cpu Info" >> pcInfo.txt
cat /proc/cpuinfo >> pcInfo.txt
echo "Memory Info" >> pcInfo.txt
cat /proc/meminfo | grep '^Mem' >> pcInfo.txt
cat /proc/meminfo | grep '^SwapCached' >> pcInfo.txt
echo "Device Info" >> pcInfo.txt
cat /proc/devices >> pcInfo.txt