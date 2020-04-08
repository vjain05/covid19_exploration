#!/bin/bash

#cd ../../coronavirus_data

#ls

#a="20200328"
#b="20200407"

#currentDateTs=$(date -j -f "%Y%m%d" $a "+%s")
#endDateTs=$(date -j -f "%Y%m%d" $b "+%s")
#offset=86400

#while [ "$currentDateTs" -le "$endDateTs" ]
#do
#  date=$(date -j -f "%s" $currentDateTs "+%Y%m%d")
#  echo $date
#  mkdir ../../coronavirus_data/$date
#  currentDateTs=$(($currentDateTs+$offset))
#done

git clone https://github.com/nytimes/covid-19-data.git

cd covid-19-data

log_out=$(git log --oneline | nl -v0 | sed 's/^ \+/&HEAD~/' | awk '{ print $1"_"$2 }')
echo $log_out


echo "split"


for i in $log_out
do
    part1=$(echo $i | cut -d'_' -f 1)
    part2=$(echo $i | cut -d'_' -f 2)
    echo $part1
    echo $part2
    part3=$(git show --no-patch --no-notes --pretty='%cI' $part2)
    part4=${part3:0:10}
    part5=${part4//-}
    echo $part5
    [ ! -d "../$part5" ] && mkdir ../$part5 && cd ../$part5 && git clone https://github.com/nytimes/covid-19-data.git && cd covid-19-data && git checkout $part2 && cd ../../covid-19-data
done

cd ..
