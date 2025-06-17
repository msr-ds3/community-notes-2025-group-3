#!/bin/bash

#download ratings data 00 to 19 from twitter
for i in $(seq 0 19)
do 
    curl -o "https://ton.twimg.com/birdwatch-public-data/2025/06/16/noteRatings/ratings-0${i}xx.zip"
    touch ratings-0${i}xx.zip
done

