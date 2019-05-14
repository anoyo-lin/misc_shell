#!/bin/bash
for i in $(pip3 list --outdated|awk '{print $1}'|awk 'NR>2')
do
	if [[ $i != '' ]]
	then
		pip3 install --upgrade $i
	fi
done
