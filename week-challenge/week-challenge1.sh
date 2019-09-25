#!/bin/bash
echo "----------------------------------------------"
echo "aim: Replace string and record replace times." 
if [ $# -lt 2 ];then
   echo "Usage: ./week-challenge.sh str1 str2"
exit
fi

echo
echo "Please input your sentence:"
read str

i=$(echo $str | grep -o $1 |wc -l)
echo -e "\n>>\nAchieve:"
echo -n "$str => "
echo $str | sed "s/$1/$2/g"
echo "Replace '$1' to '$2' $i times."

