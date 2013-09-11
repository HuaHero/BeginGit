#!/bin/bash 
#检查文件下第二列是否有重复，且有几行是重复的，并提取出重复的行的第二列

SOCFILENAME=cnyunwei.log
FILENAME=temp.log

if [ -e $FILENAME ]; then
 rm -rf $FILENAME
fi

awk -F " " '{print $2}' $SOCFILENAME | sort -r | uniq -c | grep -v "1" | awk '{print $2}'>>$FILENAME
#-F " " says to use space as seperator,{print $2} is to fetch the 2 column,and then filter the duplicated rows,and then count the duplicated rows
while read LINE
do
	grep $LINE $SOCFILENAME
done
