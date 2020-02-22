#!/bin/bash
#This code is used to report some information about a given directory
#xu1361 18/2/2020

#Count the number of files in a directory
count=`ls -l $1 | egrep -c '^-'`
echo The number of files in the directory $1 is $count

#Count the number of directories in the directory
num=`ls -l $1 | egrep -c ^d`
echo The number of directories in the directory $1 is $num

#Find out the biggest file in side the directory
bgst=`ls -lSh $1 | grep ^- | head -1 | awk '{print $9}'`
echo The biggest file in the directory $1 is $bgst

#Find out the most recently modified or created file
mod=`ls -lt $1 | grep ^- | head -1 | awk '{print $9}'`
echo The most recently modified or created file in the directory $1 is $mod

#List the name of the owners of the files in the directory
own=`ls -lhR $1 | awk '{print $3}' | uniq -d`
echo The owners of the files in the directory: $own
