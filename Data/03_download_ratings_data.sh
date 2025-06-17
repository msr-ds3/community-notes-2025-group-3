#!/bin/bash

#download ratings data 00 to 19 from twitter
for i in $(seq 0 19)
do 
    if ((i < 10))
    then
        curl -O "https://ton.twimg.com/birdwatch-public-data/2025/06/16/noteRatings/ratings-0000${i}.zip"
        touch ratings-0000${i}.zip
    else
        curl -O "https://ton.twimg.com/birdwatch-public-data/2025/06/16/noteRatings/ratings-000${i}.zip"
        touch ratings-000${i}.zip
    fi
done