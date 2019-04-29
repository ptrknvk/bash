#!/bin/bash
for i in $(seq 501 512); do 
	wget  'https://s3.amazonaws.com/hubway-data/201'$i'-hubway-tripdata.zip'
	wget  'https://s3.amazonaws.com/hubway-data/201'$(expr $i + 100)'-hubway-tripdata.zip'
done
unzip '*.zip'
cat *.csv > test.csv