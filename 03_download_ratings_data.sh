#!/bin/bash

#download ratings data 00 to 19 from twitter
for i in $(seq 0 19)
do 
    if ((i < 10)) 
    then 
    curl -o "Data/ratings-0000${i}.zip" "https://ton.twimg.com/birdwatch-public-data/2025/06/16/noteRatings/ratings-0000${i}.zip"
    touch Data/ratings-0000${i}.zip

    else

    curl -o "Data/ratings-000${i}.zip" "https://ton.twimg.com/birdwatch-public-data/2025/06/16/noteRatings/ratings-000${i}.zip"
    touch Data/ratings-000${i}.zip

    fi
done
