#!/bin/bash
echo "What do you want to scan: subnet/ip"
read use
if [ "$use" = "subnet" ]; then
echo "Enter subnet:"
read subnet
echo "Enter port:"
read port
nmap -p $port -sT $subnet -oG res
cat res |grep open УГЛОВАЯ СКОБКАresult
cat result
else
echo "Enter IP:"
read IP
nmap -PE $IP -oN resultip
cat resultip
fi