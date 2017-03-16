#! /bin/bash

for i in {1..10}
do
	echo "running scrapper #$i"
	nohup ./scrapper.rb& 
done
