start_date=$(date -d "2021-01-23T00:00:00Z" +%s000)
end_date=$(date -d "2021-07-31T23:59:59Z" +%s000)

for i in $(seq 0 19)
do 
    if ((i == 0))
    then 
        unzip -p Data/ratings-0000${i}.zip | awk -F "\t" 'NR==1' >>  Data/ratings.tsv
    fi

    if ((i < 10)) 
    then 
        unzip -p Data/ratings-0000${i}.zip | awk -F "\t" -v start="$start_date" -v end="$end_date" '($3 >= start && $3 <= end)' >> Data/ratings.tsv

    else
        unzip -p Data/ratings-000${i}.zip | awk -F "\t" -v start="$start_date" -v end="$end_date" '($3 >= start && $3 <= end)' >> Data/ratings.tsv
    fi
done
