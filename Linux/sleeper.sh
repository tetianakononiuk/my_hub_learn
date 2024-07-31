#!/bin/bash

for i in {1..10}
  do
    date '+ %H:%M:%S'
    sleep 1
  done

cat /proc/cpuinfo >> /root/file.txt
cat /etc/os-release | grep -w "NAME" >> /root/file.txt
cat /etc/os-release | grep -w "NAME" | awk -F '"' '{print $2}' >> /root/file.txt 

for j in {50..100}
  do
    touch /root/$j.txt
  done
