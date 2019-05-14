#!/bin/bash
cd /var/log/
for log in [0-9]*.log
do
cat $log| perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > $log
done
